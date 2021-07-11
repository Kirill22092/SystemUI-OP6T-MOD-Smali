.class final Lcom/android/systemui/controls/controller/ControlsControllerImpl$refreshStatus$1;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsControllerImpl;->refreshStatus(Landroid/content/ComponentName;Landroid/service/controls/Control;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $componentName:Landroid/content/ComponentName;

.field final synthetic $control:Landroid/service/controls/Control;

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Landroid/service/controls/Control;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$refreshStatus$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$refreshStatus$1;->$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$refreshStatus$1;->$control:Landroid/service/controls/Control;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 537
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$refreshStatus$1;->$componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$refreshStatus$1;->$control:Landroid/service/controls/Control;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/controls/controller/Favorites;->updateControls(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$refreshStatus$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getPersistenceWrapper$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    :cond_0
    return-void
.end method
