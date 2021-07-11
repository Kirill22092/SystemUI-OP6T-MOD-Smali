.class Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$1;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$1;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$200(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Z)V

    return-void
.end method
