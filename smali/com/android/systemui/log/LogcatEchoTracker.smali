.class public interface abstract Lcom/android/systemui/log/LogcatEchoTracker;
.super Ljava/lang/Object;
.source "LogcatEchoTracker.kt"


# virtual methods
.method public abstract isBufferLoggable(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/log/LogLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isTagLoggable(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/log/LogLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
