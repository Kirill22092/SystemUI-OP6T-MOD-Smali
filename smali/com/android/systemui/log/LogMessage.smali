.class public interface abstract Lcom/android/systemui/log/LogMessage;
.super Ljava/lang/Object;
.source "LogMessage.kt"


# virtual methods
.method public abstract getBool1()Z
.end method

.method public abstract getBool2()Z
.end method

.method public abstract getBool3()Z
.end method

.method public abstract getBool4()Z
.end method

.method public abstract getInt1()I
.end method

.method public abstract getInt2()I
.end method

.method public abstract getLevel()Lcom/android/systemui/log/LogLevel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getLong1()J
.end method

.method public abstract getPrinter()Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/android/systemui/log/LogMessage;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getStr1()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getStr2()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getStr3()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getTag()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract setBool1(Z)V
.end method

.method public abstract setBool2(Z)V
.end method

.method public abstract setBool3(Z)V
.end method

.method public abstract setBool4(Z)V
.end method

.method public abstract setInt1(I)V
.end method

.method public abstract setInt2(I)V
.end method

.method public abstract setLong1(J)V
.end method

.method public abstract setStr1(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setStr2(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setStr3(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
