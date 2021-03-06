class PinCode
  @@digit = 5
  @@decoded_pin = []
  def initialize(*args)
    args.each do |arg|
      @@decoded_pin << decode_pin(arg, @@digit)
    end
    print @@decoded_pin.join('')
    @@decoded_pin.join('')
  end

  def decode_pin(arg, digit)
    arg.split("").each do |i|
      case i
      when "U"
        digit == 1 || digit == 2 || digit == 3 ? digit : digit -= 3
      when "R"
        digit == 3 || digit == 6 || digit == 9 ? digit : digit += 1
      when "D"
        digit == 7 || digit == 8 || digit == 9 ? digit : digit += 3
      when "L"
        digit == 1 || digit == 4 || digit == 7 ? digit : digit -= 1
      else
      end
    end
    @@digit = digit
  end
end

PinCode.new("RLRLLLULULULUUDUULULRDDLURURDDLDUUDDLRDDUUUDD", "LDLRLDDDLUDRDRRUDUURLRULLUDDRLURLUULDLLRLLUDLRLRUDLULRLRRL", "LLRRDURRDLDULRDUDLRDRDRURULDU", "DULRRDRLRLUDLLURURLLRLRDLLDLLDRDUURL", "DUULULUUDUDLLRLRURULLDLRRLURDLLDUDUDDRURRLUDULULD")