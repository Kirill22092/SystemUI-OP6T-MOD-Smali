.class final synthetic Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

.field private final arg$2:Landroid/content/Context;

.field private final arg$3:Landroid/os/Bundle;

.field private final arg$4:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$6;->arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    iput-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$6;->arg$2:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$6;->arg$3:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$6;->arg$4:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$6;->arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$6;->arg$2:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$6;->arg$3:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$6;->arg$4:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->lambda$onReceiveChip$5$SmartspaceContainerController(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
