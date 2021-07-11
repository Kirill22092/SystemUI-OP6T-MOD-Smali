.class final synthetic Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

.field private final arg$2:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$2;->arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    iput-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$2;->arg$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$2;->arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$2;->arg$2:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->lambda$processExtraInformation$2$SmartspaceContainerController(Landroid/os/Bundle;)V

    return-void
.end method
