.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;
.super Landroid/database/ContentObserver;
.source "ControlsControllerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsControllerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/controls/controller/ControlsBindingController;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/Optional;Lcom/android/systemui/dump/DumpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLjava/util/Collection;II)V
    .locals 0
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "+",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    const-string/jumbo p1, "uris"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getUserChanging$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getCurrentUserId()I

    move-result p1

    if-eq p4, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    sget-object p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->Companion:Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getCurrentUserId()I

    move-result p3

    iget-object p4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {p4}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getContentResolver$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Landroid/content/ContentResolver;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;->access$isAvailable(Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;ILandroid/content/ContentResolver;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$setAvailable$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Z)V

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getAvailable()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$resetFavorites(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Z)V

    :cond_1
    :goto_0
    return-void
.end method
