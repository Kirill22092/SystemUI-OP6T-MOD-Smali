.class final synthetic Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

.field private final arg$2:Landroid/os/Bundle;

.field private final arg$3:Landroid/os/Bundle;

.field private final arg$4:Landroid/graphics/drawable/Drawable;

.field private final arg$5:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$8;->arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    iput-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$8;->arg$2:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$8;->arg$3:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$8;->arg$4:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$8;->arg$5:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$8;->arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$8;->arg$2:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$8;->arg$3:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$8;->arg$4:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$8;->arg$5:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->lambda$onReceiveChip$4$SmartspaceContainerController(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
