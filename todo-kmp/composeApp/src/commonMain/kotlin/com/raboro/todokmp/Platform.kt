package com.raboro.todokmp

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform