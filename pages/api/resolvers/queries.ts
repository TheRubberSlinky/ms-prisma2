import { objectType } from "nexus"
import fs from "fs"
import dynamic from "next/dynamic"

import { PlayerQueries } from "../resolvers/player"

// const Queries = async () => {
//   const allIndexes = fs
//     .readdirSync(`./pages/api/resolvers`, { withFileTypes: true })
//     .filter(item => item.isDirectory())
//     .map(item => `/${item.name}`)

//   var allQueries: typeof objectType[] = []

//   allIndexes.map(item => {
//     allQueries.push(dynamic(() => import(`${item}`).default))
//     console.log("query:", item)
//   })
// }

// const Queries = () => {
//   return
// }

export default { ...PlayerQueries }
