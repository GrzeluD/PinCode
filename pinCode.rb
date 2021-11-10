class PinCode
  @@digit = 5

  def initialize(*args)
    args.each do |arg|
      decode_pin(arg, @@digit)
    end
  end

  def decode_pin(arg, digit)
    arg.split("").each do |i|
      case i
      when "U"
        if digit == 1 || digit == 2 || digit == 3
          digit
        elsif digit == 4
          digit = 1
        elsif digit == 5
          digit = 2
        elsif digit == 6
          digit = 3
        elsif digit == 7
          digit = 4
        elsif digit == 8
          digit = 5
        elsif digit == 9
          digit = 6
        end
      when "R"
        if digit == 3 || digit == 6 || digit == 9
          digit
        elsif digit == 1
          digit = 2
        elsif digit == 4
          digit = 5
        elsif digit == 7
          digit = 8
        elsif digit == 2
          digit = 3
        elsif digit == 5
          digit = 6
        elsif digit == 8
          digit = 9
        end
      when "D"
        if digit == 7 || digit == 8 || digit == 9
          digit
        elsif digit == 1
          digit = 4
        elsif digit == 2
          digit = 5
        elsif digit == 3
          digit = 6
        elsif digit == 4
          digit = 7
        elsif digit == 5
          digit = 8
        elsif digit == 6
          digit = 9
        end
      when "L"
        if digit == 1 || digit == 4 || digit == 7
          digit
        elsif digit == 2
          digit = 1
        elsif digit == 3
          digit = 2
        elsif digit == 5
          digit = 4
        elsif digit == 6
          digit = 5
        elsif digit == 8
          digit = 7
        elsif digit == 9
          digit = 8
        end
      else
      end
    end
    @@digit = digit
    print @@digit
  end
end

PinCode.new("RLRLLLULULULUUDUULULRDDLURURDDLDUUDDLRDDUUUDD", "LDLRLDDDLUDRDRRUDUURLRULLUDDRLURLUULDLLRLLUDLRLRUDLULRLRRL", "LLRRDURRDLDULRDUDLRDRDRURULDU", "DULRRDRLRLUDLLURURLLRLRDLLDLLDRDUURL", "DUULULUUDUDLLRLRURULLDLRRLURDLLDUDUDDRURRLUDULULD")
