class Cmds::BatchCmd
  private macro gc_storage(klass)
    disk.start
    house = house({{klass}})
    bytes1 = du_bytes(house.dir)
    house.write(house.load)
    bytes2 = du_bytes(house.dir)
    disk.stop
    update_status "[gc] {{klass}} (#{bytes1} -> #{bytes2}) #{disk.last}", logger: "INFO", flush: true
  end

  private def gc_tsv
    dir = File.join(today_dir, "tsv")
    if Dir.exists?(dir)
      disk.start
      bytes1 = du_bytes(dir)
      seq = Shell::Seq.new
      seq.run("tar zcf tsv.tar.gz tsv", chdir: today_dir)
      seq.run("rm -rf tsv", chdir: today_dir)
      bytes2 = du_bytes("#{dir}.tar.gz")
      disk.stop
      update_status "[gc] tsv (#{bytes1} -> #{bytes2}) #{disk.last}", logger: "INFO", flush: true
    end
  end

  # snap.tsvはtsvにあり、個別snapも後から作り出せるため、snap/*は全消しする
  private def gc_snap
    dir = snap_dir
    if Dir.exists?(dir)
      disk.start
      bytes1 = du_bytes(dir)
      seq = Shell::Seq.new
      seq.run("rm -rf snap", chdir: today_dir)
      disk.stop
      update_status "[gc] snap (removed #{bytes1}) #{disk.last}", logger: "INFO", flush: true
    end
  end

  private def du_bytes(dir : String) : String
    seq = Shell::Seq.run("LC_ALL=C du -hs '#{dir}'")
    seq.stdout.split.first?.to_s
  end
end
