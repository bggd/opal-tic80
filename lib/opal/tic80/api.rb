# frozen_string_literal: true

def TIC(&block)
  `
    TIC = function() {
      #{block.call}
    }
  `
end

def SCN(&block)
  %x{
    SCN = function(line) {
      #{block.call(`line`)}
    }
  }
end

def OVR(&block)
  `
    OVR = function() {
      #{block.call}
    }
  `
end

def btn(id = nil)
  if id.nil?
    `btn()`
  else
    `btn(#{id})`
  end
end

def btnp(id = nil, hold = nil, period = nil)
  if id.nil?
    `btnp()`
  elsif hold.nil? && period.nil?
    `btnp(#{id})`
  else
    `btnp(#{id}, #{hold}, #{period})`
  end
end

def clip(x = nil, y = nil, w = nil, h = nil)
  if x.nil? && y.nil? && w.nil? && h.nil?
    `clip()`
  else
    `clip(#{x}, #{y}, #{w}, #{h})`
  end
end

def cls(color = 0)
  `cls(#{color})`
end

def circ(x, y, r, color)
  `circ(#{x}, #{y}, #{r}, #{color})`
end

def circb(x, y, r, color)
  `circb(#{x}, #{y}, #{r}, #{color})`
end

def exit
  `exit()`
end

def fget(index, flag)
  `fget(#{index}, #{flag})`
end

def font(text, x = 0, y = 0, colorkey = 0, char_width = 8, char_height = 8, fixed = false, scale = 1)
  `font(#{text}, #{x}, #{y}, #{colorkey}, #{char_width}, #{char_height}, #{fixed}, #{scale})`
end

def fset(index, flag, value)
  `fset(#{index}, #{flag}, #{value})`
end

def key(code = nil)
  if code.nil?
    `key()`
  else
    `key(#{code})`
  end
end

def keyp(code = nil, hold = nil, period = nil)
  if code.nil?
    `keyp()`
  elsif hold.nil? && period.nil?
    `keyp(#{code})`
  else
    `keyp(#{code}, #{hold}, #{period})`
  end
end

def line(x0, y0, x1, y1, color)
  `line(#{x0}, #{y0}, #{x1}, #{y1}, #{color})`
end

def map(x = 0, y = 0, w = 30, h = 17, sx = 0, sy = 0, colorkey = -1, scale = 1, remap = nil)
  `map(#{x}, #{y}, #{w}, #{h}, #{sx}, #{sy}, #{colorkey}, #{scale}, #{remap})`
end

def memcpy(toaddr, fromaddr, len)
  `memcpy(#{toaddr}, #{fromaddr}, #{len})`
end

def memset(addr, val, len)
  `memset(#{addr}, #{val}, #{len})`
end

def mget(x, y)
  `mget(#{x}, #{y})`
end

def mouse
  `mouse()`
end

def mset(x, y, id)
  `mset(#{x}, #{y}, #{id})`
end

def music(track = -1, frame = -1, row = -1, music_loop = true, sustain = false)
  `music(#{track}, #{frame}, #{row}, #{music_loop}, #{sustain})`
end

def peek(addr)
  `peek(#{addr})`
end

def peek4(addr4)
  `peek4(#{addr4})`
end

def pix(x, y, color = nil)
  if color.nil?
    `pix(#{x}, #{y})`
  else
    `pix(#{x}, #{y}, #{color})`
  end
end

def pmem(index, val = nil)
  if val.nil?
    `pmem(#{index})`
  else
    `pmem(#{index}, #{val})`
  end
end

def poke(addr, val)
  `poke(#{addr}, #{val})`
end

def poke4(addr4, val)
  `poke4(#{addr4}, #{val})`
end

def print(text, x = 0, y = 0, color = 15, fixed = false, scale = 1, smallfont = false)
  `print(#{text}, #{x}, #{y}, #{color}, #{fixed}, #{scale}, #{smallfont})`
end

def rect(x, y, w, h, color)
  `rect(#{x}, #{y}, #{w}, #{h}, #{color})`
end

def rectb(x, y, w, h, color)
  `rectb(#{x}, #{y}, #{w}, #{h}, #{color})`
end

def reset
  `reset()`
end

def sfx(id, note = nil, duration = -1, channel = 0, volume = 15, speed = 0)
  if note.nil? && duration == -1 && channel.zero? && volume == 15 && speed.zero?
    `sfx(#{id})`
  else
    `sfx(#{id}, #{note}, #{duration}, #{channel}, #{volume}, #{speed})`
  end
end

def spr(id, x, y, colorkey = -1, scale = 1, flip = 0, rotate = 0, w = 1, h = 1)
  `spr(#{id}, #{x}, #{y}, #{colorkey}, #{scale}, #{flip}, #{rotate}, #{w}, #{h})`
end

def sync(mask = 0, bank = 0, tocart = false)
  `sync(#{mask}, #{bank}, #{tocart})`
end

def time
  `time()`
end

def tstamp
  `tstamp()`
end

def trace(msg, color = nil)
  if color.nil?
    `trace(#{msg})`
  else
    `trace(#{msg}, #{color})`
  end
end

def tri(x1, y1, x2, y2, x3, y3, color)
  `tri(#{x1}, #{y1}, #{x2}, #{y2}, #{x3}, #{y3}, #{color})`
end

def textri(x1, y1, x2, y2, x3, y3, u1, v1, u2, v2, u3, v3, use_map = false, colorkey = -1)
  `textri(#{x1}, #{y1}, #{x2}, #{y2}, #{x3}, #{y3}, #{u1}, #{v1}, #{u2}, #{v2}, #{u3}, #{v3}, #{use_map}, #{colorkey})`
end
