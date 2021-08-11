.class public final Lcom/android/systemui/broadcast/UserBroadcastDispatcher$bgHandler$1;
.super Landroid/os/Handler;
.source "UserBroadcastDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/broadcast/UserBroadcastDispatcher;-><init>(Landroid/content/Context;ILandroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$bgHandler$1;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$bgHandler$1;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    check-cast p1, Landroid/content/BroadcastReceiver;

    invoke-static {p0, p1}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->access$handleUnregisterReceiver(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.content.BroadcastReceiver"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$bgHandler$1;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_3

    check-cast p1, Lcom/android/systemui/broadcast/ReceiverData;

    invoke-static {p0, p1}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->access$handleRegisterReceiver(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;Lcom/android/systemui/broadcast/ReceiverData;)V

    :goto_0
    return-void

    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.android.systemui.broadcast.ReceiverData"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
