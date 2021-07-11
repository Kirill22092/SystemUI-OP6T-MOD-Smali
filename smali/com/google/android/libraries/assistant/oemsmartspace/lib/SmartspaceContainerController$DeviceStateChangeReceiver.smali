.class Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V

    return-void
.end method


# virtual methods
.method final synthetic lambda$onReceive$0$SmartspaceContainerController$DeviceStateChangeReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-static {v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$1700(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-static {v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$1700(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-static {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$1600(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->setLanguageSupported(Z)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x122164c

    if-eq p2, v0, :cond_1

    const v0, 0x392cb822

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$1302(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Landroid/os/UserHandle;)Landroid/os/UserHandle;

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-static {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$1400(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$1500(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Z)V

    return-void

    :cond_1
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-static {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$1600(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)Z

    move-result p1

    invoke-static {}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->isLanguageSupported()Z

    move-result p2

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-static {}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->isLanguageSupported()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$1602(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Z)Z

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-static {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$800(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver$$Lambda$0;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver$$Lambda$0;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
