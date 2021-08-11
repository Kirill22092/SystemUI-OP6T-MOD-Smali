.class final Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1$onBatteryLevelChanged$1;
.super Ljava/lang/Object;
.source "BatteryTrigger.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;->onBatteryLevelChanged(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $level:I

.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1$onBatteryLevelChanged$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;

    iput p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1$onBatteryLevelChanged$1;->$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1$onBatteryLevelChanged$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;

    iget-object v0, v0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->access$getMBitmojiManager$p(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;)Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    move-result-object v0

    const-string v1, "battery"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->onTriggerChanged(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1$onBatteryLevelChanged$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;

    iget-object v0, v0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->access$getMCharging$p(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1$onBatteryLevelChanged$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;

    iget-object v0, v0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;

    iget v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1$onBatteryLevelChanged$1;->$level:I

    invoke-static {v0, v2}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->access$batteryLevelInRange(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1$onBatteryLevelChanged$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger$mBatteryCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;->access$getMBitmojiManager$p(Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;)Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->onTriggerChanged(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
