.class public final Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "OpBitmojiNotificationManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpBitmojiNotificationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpBitmojiNotificationManager.kt\ncom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1\n*L\n1#1,260:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    sget-object p2, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getTAG()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getNOTI_READY_ID()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->findNotificationInStatusBar(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->access$updateReadyNotification(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;)V

    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    sget-object p2, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getTAG()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getNOTI_REVOKE_ID()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->findNotificationInStatusBar(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->access$updateRevokeNotification(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;)V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    sget-object p2, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getTAG()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getNOTI_DOWNLOAD_ID()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->findNotificationInStatusBar(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->updateDownloadNotification()V

    :cond_2
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    sget-object p2, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getTAG()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getNOTI_STICKER_UPDATE_ID()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->findNotificationInStatusBar(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->updateStickerUpdateNotification()V

    goto/16 :goto_1

    :cond_3
    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getBITMOJI_RECEIVER_ACTION()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p1, "status"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_4

    sget-object p2, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: status change= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez p1, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x675d9a3

    if-eq p2, v0, :cond_7

    const v0, 0xca1d9a2

    if-eq p2, v0, :cond_6

    goto/16 :goto_1

    :cond_6
    const-string p2, "no_access"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->access$updateRevokeNotification(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;)V

    goto/16 :goto_1

    :cond_7
    const-string p2, "ready"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    sget-object p2, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getTAG()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getNOTI_REVOKE_ID()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->access$removeNotification(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->checkNeedToShowReadyNotification()V

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->access$checkIfNeedRecoverDownload(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;)V

    goto/16 :goto_1

    :cond_8
    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getACTION_CANCEL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-boolean p2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_9

    sget-object p2, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getTAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "click cancel"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-static {p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->access$getMNm$p(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;)Landroid/app/NotificationManager;

    move-result-object p2

    if-eqz p2, :cond_a

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getNOTI_DOWNLOAD_ID()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_a
    sget-object p2, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->Companion:Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;

    invoke-virtual {p2, p1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->logCancelDownloadEvent()V

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$mReceiver$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->access$getMDownloadNotificationListener$p(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;)Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$OnDownloadNotificationActionListener;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$OnDownloadNotificationActionListener;->onCancel()V

    goto :goto_1

    :cond_b
    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getACTION_READY()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_0

    :cond_c
    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getACTION_REDIRECT()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    :goto_0
    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getKEY_NOTIFICATION_TAG()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings/.Settings$OPCustomClockSettingsActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p2, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$Companion;->getNOTI_READY_ID()I

    move-result p2

    if-ne p0, p2, :cond_d

    sget-object p0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->Companion:Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->logNotificationReadyClickEvent()V

    :cond_d
    :goto_1
    return-void
.end method
