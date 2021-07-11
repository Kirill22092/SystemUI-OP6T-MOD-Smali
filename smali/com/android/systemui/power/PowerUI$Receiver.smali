.class final Lcom/android/systemui/power/PowerUI$Receiver;
.super Lcom/oneplus/systemui/power/OpPowerUI$OpReceiver;
.source "PowerUI.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Receiver"
.end annotation


# instance fields
.field private mHasReceivedBattery:Z

.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/power/OpPowerUI$OpReceiver;-><init>(Lcom/oneplus/systemui/power/OpPowerUI;)V

    const/4 p1, 0x0

    .line 267
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->mHasReceivedBattery:Z

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p0}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onReceive$1(ZI)V
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->maybeShowBatteryWarningV2(ZI)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 271
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 272
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 273
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 274
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    .line 275
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 276
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    invoke-super {p0, v0}, Lcom/oneplus/systemui/power/OpPowerUI$OpReceiver;->init(Landroid/content/IntentFilter;)V

    .line 282
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v2}, Lcom/android/systemui/power/PowerUI;->access$100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, p0, v0, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    .line 284
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver init:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI$Receiver;->mHasReceivedBattery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PowerUI"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->mHasReceivedBattery:Z

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$200(Lcom/android/systemui/power/PowerUI;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v1}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/power/PowerUI$Receiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onReceive$0$PowerUI$Receiver()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI$Receiver;->lambda$onReceive$0()V

    return-void
.end method

.method public synthetic lambda$onReceive$1$PowerUI$Receiver(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI$Receiver;->lambda$onReceive$1(ZI)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 306
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    const-string v4, "onReceive:"

    const-string v5, "PowerUI"

    if-eqz v3, :cond_0

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " start"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 310
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    new-instance v1, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$r1RcZjs8DVXWaC4Afqm8W0WAvm8;

    invoke-direct {v1, v0}, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$r1RcZjs8DVXWaC4Afqm8W0WAvm8;-><init>(Lcom/android/systemui/power/PowerUI$Receiver;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_3

    :cond_1
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    .line 316
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    .line 317
    iput-boolean v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->mHasReceivedBattery:Z

    .line 318
    iget-object v7, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v8, v7, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/16 v9, 0x64

    const-string v10, "level"

    .line 319
    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, v7, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 320
    iget-object v7, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v9, v7, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const-string/jumbo v10, "status"

    .line 321
    invoke-virtual {v1, v10, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, v7, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 323
    iget-object v7, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v7}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v7

    .line 324
    iget-object v10, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "plugged"

    invoke-virtual {v1, v11, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/systemui/power/PowerUI;->access$402(Lcom/android/systemui/power/PowerUI;I)I

    .line 325
    iget-object v10, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v10}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v10

    .line 326
    iget-object v11, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v12, "invalid_charger"

    invoke-virtual {v1, v12, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v11, v1}, Lcom/android/systemui/power/PowerUI;->access$502(Lcom/android/systemui/power/PowerUI;I)I

    .line 327
    iget-object v1, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v11, v1, Lcom/android/systemui/power/PowerUI;->mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    iput-object v11, v1, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 329
    invoke-static {v1}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v6

    :goto_0
    if-eqz v7, :cond_3

    move v11, v3

    goto :goto_1

    :cond_3
    move v11, v6

    .line 332
    :goto_1
    iget-object v12, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12, v8}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;I)I

    move-result v12

    .line 333
    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v13, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v13, v14}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;I)I

    move-result v13

    .line 349
    sget-boolean v14, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v14, :cond_4

    .line 350
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "buckets:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v15}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ".."

    .line 351
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1000(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v3

    aget v3, v3, v6

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$900(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v3

    const/4 v6, 0x1

    aget v3, v3, v6

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$800(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v3

    const/4 v6, 0x2

    aget v3, v3, v6

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  level:"

    .line 352
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-->"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  status:"

    .line 353
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  plugType:"

    .line 354
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  invalidCharger:"

    .line 355
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  bucket:"

    .line 356
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  plugged:"

    .line 357
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  isPowerSaveMode:"

    .line 358
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_4
    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v7, v6, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)J

    move-result-wide v8

    invoke-interface {v3, v7, v13, v8, v9}, Lcom/android/systemui/power/PowerUI$WarningsUI;->update(IIJ)V

    if-nez v10, :cond_5

    .line 364
    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v1, "showing invalid charger warning"

    .line 365
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showInvalidChargerWarning()V

    return-void

    :cond_5
    if-eqz v10, :cond_6

    .line 368
    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-nez v3, :cond_6

    .line 369
    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissInvalidChargerWarning()V

    goto :goto_2

    .line 370
    :cond_6
    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isInvalidChargerWarningShowing()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 372
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "Bad Charger"

    .line 373
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    .line 379
    :cond_8
    :goto_2
    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1400(Lcom/android/systemui/power/PowerUI;)Ljava/util/concurrent/Future;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 380
    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1400(Lcom/android/systemui/power/PowerUI;)Ljava/util/concurrent/Future;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 381
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "cancelled task"

    .line 382
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_9
    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    new-instance v6, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$YHQ7eAdH8G2eZkWaBryO-zqzv1I;

    invoke-direct {v6, v0, v1, v13}, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$YHQ7eAdH8G2eZkWaBryO-zqzv1I;-><init>(Lcom/android/systemui/power/PowerUI$Receiver;ZI)V

    invoke-static {v6}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/systemui/power/PowerUI;->access$1402(Lcom/android/systemui/power/PowerUI;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    goto/16 :goto_3

    :cond_a
    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 390
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 391
    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/android/systemui/power/PowerUI;->access$1202(Lcom/android/systemui/power/PowerUI;J)J

    goto :goto_3

    :cond_b
    const-string v3, "android.intent.action.SCREEN_ON"

    .line 392
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 393
    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-wide/16 v6, -0x1

    invoke-static {v0, v6, v7}, Lcom/android/systemui/power/PowerUI;->access$1202(Lcom/android/systemui/power/PowerUI;J)J

    goto :goto_3

    :cond_c
    const-string v3, "android.intent.action.USER_SWITCHED"

    .line 394
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 395
    iget-object v1, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v1}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->userSwitched()V

    .line 398
    iget-object v1, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v1}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 400
    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1500(Lcom/android/systemui/power/PowerUI;)V

    .line 401
    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->access$1600(Lcom/android/systemui/power/PowerUI;Z)V

    goto :goto_3

    :cond_d
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGING"

    .line 406
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "mode"

    .line 408
    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 410
    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->access$1700(Lcom/android/systemui/power/PowerUI;Z)V

    goto :goto_3

    .line 415
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown intent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_f
    :goto_3
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method
