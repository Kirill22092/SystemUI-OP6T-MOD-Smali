.class final Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsControllerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/controls/controller/ControlsBindingController;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/Optional;Lcom/android/systemui/dump/DumpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getUserStructure$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/controls/controller/UserStructure;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/UserStructure;->getFile()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "userStructure.file"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getExecutor$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v2

    new-instance v3, Landroid/app/backup/BackupManager;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getUserStructure$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/controls/controller/UserStructure;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/UserStructure;->getUserContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v3, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;-><init>(Ljava/io/File;Ljava/util/concurrent/Executor;Landroid/app/backup/BackupManager;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;->get()Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    move-result-object p0

    return-object p0
.end method
