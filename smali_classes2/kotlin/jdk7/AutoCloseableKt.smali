.class public final Lkotlin/jdk7/AutoCloseableKt;
.super Ljava/lang/Object;
.source "AutoCloseable.kt"


# direct methods
.method public static final closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Ljava/lang/AutoCloseable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 56
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_0

    .line 59
    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
