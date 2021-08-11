.class public final Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;
.super Ljava/lang/Object;
.source "BatteryTrigger.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryLevelChanged(IZZ)V
    .locals 3

    iget-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;

    invoke-static {p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->access$getMBatteryLevel$p(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;)I

    move-result p2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;

    invoke-static {v0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->access$setMBatteryLevel$p(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;I)V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->access$getMCharging$p(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->access$getMCharging$p(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p3, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;

    invoke-static {v0, p3}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->access$setMCharging$p(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;Z)V

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez p3, :cond_3

    if-eq p2, p1, :cond_3

    iget-object p3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;

    invoke-static {p3, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->access$batteryLevelInRange(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;I)Z

    move-result p2

    iget-object p3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;

    invoke-static {p3, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->access$batteryLevelInRange(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;I)Z

    move-result p3

    if-eq p2, p3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move v2, v1

    :cond_3
    if-nez v0, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    iget-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;

    invoke-static {p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->access$getHandler(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1$onBatteryLevelChanged$1;

    invoke-direct {p3, p0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1$onBatteryLevelChanged$1;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method
