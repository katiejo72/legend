# Design
## Example

You are in a room.  There is a candle on a table in the corner.  There are exits to the North and East.

Possible commands: 
* go
* look
* get
* take
* use

## Objects

room              Zone
  table           Thing
    candle        Thing
  exit            Travel
    North         Travel
    East          Travel
character         Character
  player          Character
  npc             Character
interface         Client
  description     String
  commands        Command
    go            Command
    look          Command
    get           Command
    take          Command
    use           Command