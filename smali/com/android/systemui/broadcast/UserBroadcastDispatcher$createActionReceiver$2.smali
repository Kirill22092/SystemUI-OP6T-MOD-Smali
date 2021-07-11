.class final Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UserBroadcastDispatcher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->createActionReceiver$packages__apps__OPSystemUI__android_common__OPSystemUI_core(Ljava/lang/String;)Lcom/android/systemui/broadcast/ActionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/BroadcastReceiver;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $action:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    iput-object p2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->$action:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->invoke(Landroid/content/BroadcastReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->access$getContext$p(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    iget-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    invoke-static {p1}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->access$getLogger$p(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;)Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->access$getUserId$p(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->$action:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logContextReceiverUnregistered(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to unregister unregistered receiver for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->access$getUserId$p(Lcom/android/systemui/broadcast/UserBroadcastDispatcher;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->$action:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    const-string p1, "UserBroadcastDispatcher"

    .line 129
    invoke-static {p1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
