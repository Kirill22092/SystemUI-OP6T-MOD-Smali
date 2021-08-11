.class final synthetic Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

.field private final arg$2:Landroid/content/Context;

.field private final arg$3:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

.field private final arg$4:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Landroid/content/Context;Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$7;->arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    iput-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$7;->arg$2:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$7;->arg$3:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iput-object p4, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$7;->arg$4:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$7;->arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$7;->arg$2:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$7;->arg$3:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$7;->arg$4:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->lambda$onReceivedCard$6$SmartspaceContainerController(Landroid/content/Context;Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;)V

    return-void
.end method
