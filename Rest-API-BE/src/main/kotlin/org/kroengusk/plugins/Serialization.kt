package org.kroengusk.plugins

import io.ktor.http.*
import io.ktor.serialization.kotlinx.json.*
import io.ktor.server.application.*
import io.ktor.server.plugins.contentnegotiation.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import kotlinx.serialization.Serializable

fun Application.configureSerialization() {
    install(ContentNegotiation) {
        json()
    }
    routing {
        get("/json/kotlinx-serialization") {
                val param = Root(name = Name())
                call.respond(HttpStatusCode.OK, param)
            }
    }
}

@Serializable
data class Root(
    val keytest: String = "Hello, world",
    val name: Name
)

@Serializable
data class Name (
    val first: String = "Basyair",
    val last: String = "Fathul"
)