.class Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$SmartSpaceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$SmartSpaceBroadcastReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$SmartSpaceBroadcastReceiver;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V

    return-void
.end method

.method static final synthetic lambda$onReceive$0$SmartspaceContainerController$SmartSpaceBroadcastReceiver(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$1000(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x16

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "receiving updateView: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartspaceReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.google.android.apps.nexuslauncher.extra.SMARTSPACE_CARD"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$SmartSpaceBroadcastReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-static {v1, p1, p2, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$600(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Landroid/content/Context;Landroid/content/Intent;[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$SmartSpaceBroadcastReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$700(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$SmartSpaceBroadcastReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-static {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$800(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$SmartSpaceBroadcastReceiver$$Lambda$0;

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$SmartSpaceBroadcastReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-direct {p2, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$SmartSpaceBroadcastReceiver$$Lambda$0;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$SmartSpaceBroadcastReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-static {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$900(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$SmartSpaceBroadcastReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$902(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Z)Z

    :cond_1
    return-void
.end method
