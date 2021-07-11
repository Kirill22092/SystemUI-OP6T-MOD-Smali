.class Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/accessibility/SystemActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemActionsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/accessibility/SystemActions;


# direct methods
.method private constructor <init>(Lcom/android/systemui/accessibility/SystemActions;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/accessibility/SystemActions;Lcom/android/systemui/accessibility/SystemActions$1;)V
    .locals 0

    .line 388
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;-><init>(Lcom/android/systemui/accessibility/SystemActions;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;)Landroid/content/IntentFilter;
    .locals 0

    .line 388
    invoke-direct {p0}, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 0

    .line 388
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private createIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 428
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "SYSTEM_ACTION_BACK"

    .line 429
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_HOME"

    .line 430
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_RECENTS"

    .line 431
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_NOTIFICATIONS"

    .line 432
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_QUICK_SETTINGS"

    .line 433
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_POWER_DIALOG"

    .line 434
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_LOCK_SCREEN"

    .line 435
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    .line 436
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON"

    .line 437
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON_MENU"

    .line 438
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT"

    .line 439
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method private createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    .line 405
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "SYSTEM_ACTION_QUICK_SETTINGS"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto/16 :goto_1

    :sswitch_1
    const-string p0, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_2
    const-string p0, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_3
    const-string p0, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON_MENU"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_4
    const-string p0, "SYSTEM_ACTION_RECENTS"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_5
    const-string p0, "SYSTEM_ACTION_LOCK_SCREEN"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_6
    const-string p0, "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_1

    :sswitch_7
    const-string p0, "SYSTEM_ACTION_NOTIFICATIONS"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_8
    const-string p0, "SYSTEM_ACTION_POWER_DIALOG"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_9
    const-string p0, "SYSTEM_ACTION_HOME"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_a
    const-string p0, "SYSTEM_ACTION_BACK"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 417
    :pswitch_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    invoke-static {p1, v0, p0, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41cad4c0 -> :sswitch_a
        -0x41c7e4c8 -> :sswitch_9
        -0x2af1b8c5 -> :sswitch_8
        -0x1fe56d71 -> :sswitch_7
        -0xacfbdb0 -> :sswitch_6
        -0x9247679 -> :sswitch_5
        0x289985f -> :sswitch_4
        0x1f693002 -> :sswitch_3
        0x4a438bbc -> :sswitch_2
        0x5e2ce025 -> :sswitch_1
        0x6379b96e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 445
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p2, "SYSTEM_ACTION_QUICK_SETTINGS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto/16 :goto_1

    :sswitch_1
    const-string p2, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_2
    const-string p2, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_3
    const-string p2, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON_MENU"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_4
    const-string p2, "SYSTEM_ACTION_RECENTS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_5
    const-string p2, "SYSTEM_ACTION_LOCK_SCREEN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_6
    const-string p2, "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_7
    const-string p2, "SYSTEM_ACTION_NOTIFICATIONS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_8
    const-string p2, "SYSTEM_ACTION_POWER_DIALOG"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_9
    const-string p2, "SYSTEM_ACTION_HOME"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_a
    const-string p2, "SYSTEM_ACTION_BACK"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 488
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-static {p0}, Lcom/android/systemui/accessibility/SystemActions;->access$1300(Lcom/android/systemui/accessibility/SystemActions;)V

    goto :goto_2

    .line 484
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-static {p0}, Lcom/android/systemui/accessibility/SystemActions;->access$1200(Lcom/android/systemui/accessibility/SystemActions;)V

    goto :goto_2

    .line 480
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-static {p0}, Lcom/android/systemui/accessibility/SystemActions;->access$1100(Lcom/android/systemui/accessibility/SystemActions;)V

    goto :goto_2

    .line 476
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-static {p0}, Lcom/android/systemui/accessibility/SystemActions;->access$1000(Lcom/android/systemui/accessibility/SystemActions;)V

    goto :goto_2

    .line 472
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-static {p0}, Lcom/android/systemui/accessibility/SystemActions;->access$900(Lcom/android/systemui/accessibility/SystemActions;)V

    goto :goto_2

    .line 468
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-static {p0}, Lcom/android/systemui/accessibility/SystemActions;->access$800(Lcom/android/systemui/accessibility/SystemActions;)V

    goto :goto_2

    .line 464
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-static {p0}, Lcom/android/systemui/accessibility/SystemActions;->access$700(Lcom/android/systemui/accessibility/SystemActions;)V

    goto :goto_2

    .line 460
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-static {p0}, Lcom/android/systemui/accessibility/SystemActions;->access$600(Lcom/android/systemui/accessibility/SystemActions;)V

    goto :goto_2

    .line 456
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-static {p0}, Lcom/android/systemui/accessibility/SystemActions;->access$500(Lcom/android/systemui/accessibility/SystemActions;)V

    goto :goto_2

    .line 452
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-static {p0}, Lcom/android/systemui/accessibility/SystemActions;->access$400(Lcom/android/systemui/accessibility/SystemActions;)V

    goto :goto_2

    .line 448
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-static {p0}, Lcom/android/systemui/accessibility/SystemActions;->access$300(Lcom/android/systemui/accessibility/SystemActions;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x41cad4c0 -> :sswitch_a
        -0x41c7e4c8 -> :sswitch_9
        -0x2af1b8c5 -> :sswitch_8
        -0x1fe56d71 -> :sswitch_7
        -0xacfbdb0 -> :sswitch_6
        -0x9247679 -> :sswitch_5
        0x289985f -> :sswitch_4
        0x1f693002 -> :sswitch_3
        0x4a438bbc -> :sswitch_2
        0x5e2ce025 -> :sswitch_1
        0x6379b96e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
