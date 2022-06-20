import { objectType } from "nexus"
import prisma from "../../../../lib/prisma"

const Player = objectType({
  name: "Player",
  definition(t) {
    t.int("id")
    t.string("email")
    t.string("firstName")
    t.string("lastName")
    t.string("displayName")
    t.boolean("isVip")
    t.list.field("followedBy", {
      type: Player,
      resolve: parent => prisma.player.findUnique({ where: { id: parent.id } }),
    })
    t.list.field("following", {
      type: Player,
      resolve: parent => prisma.player.findUnique({ where: { id: parent.id } }),
    })
  },
})

export const PlayerQueries = {
  Player,
}
