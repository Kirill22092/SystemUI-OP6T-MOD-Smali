.class public final Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;
.super Landroid/database/ContentObserver;
.source "LogcatEchoTrackerDebug.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/log/LogcatEchoTrackerDebug;->attach(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/log/LogcatEchoTrackerDebug;


# direct methods
.method constructor <init>(Lcom/android/systemui/log/LogcatEchoTrackerDebug;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;->this$0:Lcom/android/systemui/log/LogcatEchoTrackerDebug;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p0, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;->this$0:Lcom/android/systemui/log/LogcatEchoTrackerDebug;

    invoke-static {p0}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->access$getCachedBufferLevels$p(Lcom/android/systemui/log/LogcatEchoTrackerDebug;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method
