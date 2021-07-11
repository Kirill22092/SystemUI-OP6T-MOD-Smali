.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/controls/controller/ControlsController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsControllerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,729:1\n1591#2,2:730\n1591#2,2:732\n1313#2:734\n1382#2,3:735\n1591#2:738\n1591#2,2:739\n1592#2:741\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsControllerImpl\n*L\n394#1,2:730\n461#1,2:732\n491#1:734\n491#1,3:735\n582#1:738\n582#1,2:739\n582#1:741\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;

.field private static final URI:Landroid/net/Uri;


# instance fields
.field private auxiliaryPersistenceWrapper:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private available:Z

.field private final bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final context:Landroid/content/Context;

.field private currentUser:Landroid/os/UserHandle;

.field private final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final listingCallback:Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1;

.field private final listingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field private final persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

.field private final restoreFinishedReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final seedingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private seedingInProgress:Z

.field private final settingObserver:Landroid/database/ContentObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

.field private userChanging:Z

.field private userStructure:Lcom/android/systemui/controls/controller/UserStructure;

.field private final userSwitchReceiver:Lcom/android/systemui/controls/controller/ControlsControllerImpl$userSwitchReceiver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->Companion:Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;

    const-string v0, "controls_enabled"

    .line 72
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/controls/controller/ControlsBindingController;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/Optional;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/ui/ControlsUiController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/controls/controller/ControlsBindingController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/controls/management/ControlsListingController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/Optional;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
            "Lcom/android/systemui/controls/controller/ControlsBindingController;",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;",
            ">;",
            "Lcom/android/systemui/dump/DumpManager;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindingController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listingController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionalWrapper"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    iput-object p5, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    iput-object p6, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingCallbacks:Ljava/util/List;

    .line 88
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    .line 94
    sget-object p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->Companion:Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getCurrentUserId()I

    move-result p2

    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;->access$isAvailable(Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;ILandroid/content/ContentResolver;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->available:Z

    .line 102
    new-instance p1, Lcom/android/systemui/controls/controller/UserStructure;

    iget-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    const-string p4, "currentUser"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/controls/controller/UserStructure;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    .line 104
    new-instance p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    invoke-virtual {p7, p1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "optionalWrapper.orElseGe\u2026)\n            )\n        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 112
    new-instance p1, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

    .line 113
    iget-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/UserStructure;->getAuxiliaryFile()Ljava/io/File;

    move-result-object p2

    const-string/jumbo p3, "userStructure.auxiliaryFile"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 112
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;-><init>(Ljava/io/File;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->auxiliaryPersistenceWrapper:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

    .line 134
    new-instance p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$userSwitchReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$userSwitchReceiver$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userSwitchReceiver:Lcom/android/systemui/controls/controller/ControlsControllerImpl$userSwitchReceiver$1;

    .line 150
    new-instance p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->restoreFinishedReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    new-instance p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->settingObserver:Landroid/database/ContentObserver;

    .line 189
    new-instance p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->listingCallback:Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1;

    .line 242
    const-class p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "javaClass.name"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p8, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getAvailable()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->resetFavorites(Z)V

    const/4 p1, 0x0

    .line 244
    iput-boolean p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    .line 245
    iget-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 246
    iget-object p4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userSwitchReceiver:Lcom/android/systemui/controls/controller/ControlsControllerImpl$userSwitchReceiver$1;

    .line 247
    new-instance p5, Landroid/content/IntentFilter;

    const-string p6, "android.intent.action.USER_SWITCHED"

    invoke-direct {p5, p6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 248
    iget-object p6, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 249
    sget-object p7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p8, "UserHandle.ALL"

    invoke-static {p7, p8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p3, p4, p5, p6, p7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 251
    iget-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->context:Landroid/content/Context;

    .line 252
    iget-object p4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->restoreFinishedReceiver:Landroid/content/BroadcastReceiver;

    .line 253
    new-instance p5, Landroid/content/IntentFilter;

    const-string p6, "com.android.systemui.backup.RESTORE_FINISHED"

    invoke-direct {p5, p6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p6, "com.android.systemui.permission.SELF"

    .line 251
    invoke-virtual {p3, p4, p5, p6, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->URI:Landroid/net/Uri;

    iget-object p4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->settingObserver:Landroid/database/ContentObserver;

    const/4 p5, -0x1

    invoke-virtual {p2, p3, p1, p4, p5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 258
    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->listingCallback:Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$createRemovedStatus(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Ljava/lang/CharSequence;Z)Lcom/android/systemui/controls/ControlStatus;
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->createRemovedStatus(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Ljava/lang/CharSequence;Z)Lcom/android/systemui/controls/ControlStatus;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$findRemoved(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->findRemoved(Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBindingController$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/controls/controller/ControlsBindingController;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    return-object p0
.end method

.method public static final synthetic access$getContentResolver$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurrentUser$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Landroid/os/UserHandle;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method public static final synthetic access$getExecutor$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public static final synthetic access$getPersistenceWrapper$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    return-object p0
.end method

.method public static final synthetic access$getSeedingCallbacks$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getSeedingInProgress$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingInProgress:Z

    return p0
.end method

.method public static final synthetic access$getUserChanging$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    return p0
.end method

.method public static final synthetic access$getUserStructure$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/controls/controller/UserStructure;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    return-object p0
.end method

.method public static final synthetic access$resetFavorites(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->resetFavorites(Z)V

    return-void
.end method

.method public static final synthetic access$setAvailable$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->available:Z

    return-void
.end method

.method public static final synthetic access$setUserChanging$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    return-void
.end method

.method public static final synthetic access$setValuesForUser(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/os/UserHandle;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->setValuesForUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static final synthetic access$startSeeding(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/List;Ljava/util/function/Consumer;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->startSeeding(Ljava/util/List;Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public static synthetic auxiliaryPersistenceWrapper$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final confirmAvailability()Z
    .locals 3

    .line 277
    iget-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    const/4 v1, 0x0

    const-string v2, "ControlsControllerImpl"

    if-eqz v0, :cond_0

    const-string p0, "Controls not available while user is changing"

    .line 278
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getAvailable()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Controls not available"

    .line 282
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final createRemovedStatus(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Ljava/lang/CharSequence;Z)Lcom/android/systemui/controls/ControlStatus;
    .locals 3

    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 474
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->context:Landroid/content/Context;

    .line 478
    invoke-virtual {p1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    .line 477
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 481
    new-instance v0, Landroid/service/controls/Control$StatelessBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/service/controls/Control$StatelessBuilder;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 482
    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/service/controls/Control$StatelessBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;

    move-result-object p0

    .line 483
    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/controls/Control$StatelessBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;

    move-result-object p0

    .line 484
    invoke-virtual {p0, p3}, Landroid/service/controls/Control$StatelessBuilder;->setStructure(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;

    move-result-object p0

    .line 485
    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/ControlInfo;->getDeviceType()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/service/controls/Control$StatelessBuilder;->setDeviceType(I)Landroid/service/controls/Control$StatelessBuilder;

    move-result-object p0

    .line 486
    invoke-virtual {p0}, Landroid/service/controls/Control$StatelessBuilder;->build()Landroid/service/controls/Control;

    move-result-object p0

    .line 487
    new-instance p2, Lcom/android/systemui/controls/ControlStatus;

    const-string p3, "control"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/android/systemui/controls/ControlStatus;-><init>(Landroid/service/controls/Control;Landroid/content/ComponentName;ZZ)V

    return-object p2
.end method

.method static synthetic createRemovedStatus$default(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Ljava/lang/CharSequence;ZILjava/lang/Object;)Lcom/android/systemui/controls/ControlStatus;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    .line 471
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->createRemovedStatus(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Ljava/lang/CharSequence;Z)Lcom/android/systemui/controls/ControlStatus;

    move-result-object p0

    return-object p0
.end method

.method private final endSeedingCall(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 460
    iput-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingInProgress:Z

    .line 461
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingCallbacks:Ljava/util/List;

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 462
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 464
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private final findRemoved(Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1313
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1382
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1383
    check-cast v0, Landroid/service/controls/Control;

    .line 491
    invoke-virtual {v0}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
    :cond_0
    invoke-static {p1, p0}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private final getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 93
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "context.contentResolver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final resetFavorites(Z)V
    .locals 1

    .line 269
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/Favorites;->clear()V

    if-eqz p1, :cond_0

    .line 272
    sget-object p1, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->readFavorites()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/controller/Favorites;->load(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static synthetic restoreFinishedReceiver$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final setValuesForUser(Landroid/os/UserHandle;)V
    .locals 4

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changing to user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlsControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    .line 121
    new-instance v0, Lcom/android/systemui/controls/controller/UserStructure;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->context:Landroid/content/Context;

    const-string v2, "currentUser"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/controls/controller/UserStructure;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    .line 122
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 123
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/UserStructure;->getFile()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "userStructure.file"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v2, Landroid/app/backup/BackupManager;

    iget-object v3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    invoke-virtual {v3}, Lcom/android/systemui/controls/controller/UserStructure;->getUserContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->changeFileAndBackupManager(Ljava/io/File;Landroid/app/backup/BackupManager;)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->auxiliaryPersistenceWrapper:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userStructure:Lcom/android/systemui/controls/controller/UserStructure;

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/UserStructure;->getAuxiliaryFile()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "userStructure.auxiliaryFile"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->changeFile(Ljava/io/File;)V

    .line 127
    sget-object v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->Companion:Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;->access$isAvailable(Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;ILandroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->available:Z

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getAvailable()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->resetFavorites(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    invoke-interface {v0, p1}, Lcom/android/systemui/util/UserAwareController;->changeUser(Landroid/os/UserHandle;)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    invoke-interface {v0, p1}, Lcom/android/systemui/util/UserAwareController;->changeUser(Landroid/os/UserHandle;)V

    const/4 p1, 0x0

    .line 131
    iput-boolean p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    return-void
.end method

.method public static synthetic settingObserver$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final startSeeding(Ljava/util/List;Ljava/util/function/Consumer;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/controls/controller/SeedResponse;",
            ">;Z)V"
        }
    .end annotation

    .line 409
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p3, 0x1

    .line 410
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->endSeedingCall(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 414
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Beginning request to seed favorites for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ControlsControllerImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v6

    .line 418
    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    .line 420
    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;

    move-object v2, v1

    move-object v3, p0

    move-object v4, v0

    move-object v5, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/List;Z)V

    .line 418
    invoke-interface {p1, v0, v1}, Lcom/android/systemui/controls/controller/ControlsBindingController;->bindAndLoadSuggested(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;)V

    return-void
.end method


# virtual methods
.method public action(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/actions/ControlAction;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/controller/ControlInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/service/controls/actions/ControlAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 556
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/controls/controller/ControlsBindingController;->action(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/actions/ControlAction;)V

    return-void
.end method

.method public addFavorite(Landroid/content/ComponentName;Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ControlInfo;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/controller/ControlInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "structureName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ControlInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addSeedingFavoritesCallback(Ljava/util/function/Consumer;)Z
    .locals 2
    .param p1    # Ljava/util/function/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    iget-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingInProgress:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addSeedingFavoritesCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addSeedingFavoritesCallback$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public countFavoritesForComponent(Landroid/content/ComponentName;)I
    .locals 0
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "componentName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    sget-object p0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/Favorites;->getControlsForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ControlsController state:"

    .line 577
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Available: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getAvailable()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Changing users: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Current user: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    const-string v0, "currentUser"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  Favorites:"

    .line 581
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    sget-object p1, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object p1

    .line 1591
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p3}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object p3

    .line 1591
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 588
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getAuxiliaryPersistenceWrapper$packages__apps__OPSystemUI__android_common__OPSystemUI_core()Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->auxiliaryPersistenceWrapper:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

    return-object p0
.end method

.method public getAvailable()Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->available:Z

    return p0
.end method

.method public getCurrentUserId()I
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    const-string v0, "currentUser"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method public getFavorites()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 559
    sget-object p0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFavoritesForComponent(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "componentName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    sget-object p0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/Favorites;->getStructuresForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFavoritesForStructure(Landroid/content/ComponentName;Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ControlInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "componentName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "structureName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    sget-object p0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    .line 572
    new-instance v0, Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 571
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/Favorites;->getControlsForStructure(Lcom/android/systemui/controls/controller/StructureInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadForComponent(Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 5
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/controls/controller/ControlsController$LoadData;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    iget-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 299
    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    const-wide/16 v2, 0x1f4

    .line 301
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 298
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    .line 305
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlsControllerKt;->createLoadDataObject(Ljava/util/List;Ljava/util/List;Z)Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    .line 311
    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Ljava/util/function/Consumer;)V

    .line 309
    invoke-interface {v0, p1, v1}, Lcom/android/systemui/controls/controller/ControlsBindingController;->bindAndLoad(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;)Ljava/lang/Runnable;

    move-result-object p0

    .line 308
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onActionResponse(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 547
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/controls/ui/ControlsUiController;->onActionResponse(Landroid/content/ComponentName;Ljava/lang/String;I)V

    return-void
.end method

.method public refreshStatus(Landroid/content/ComponentName;Landroid/service/controls/Control;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/service/controls/Control;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "control"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ControlsControllerImpl"

    const-string p1, "Controls not available"

    .line 529
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 535
    :cond_0
    invoke-virtual {p2}, Landroid/service/controls/Control;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 536
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$refreshStatus$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$refreshStatus$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Landroid/service/controls/Control;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 542
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/controls/ui/ControlsUiController;->onRefreshState(Landroid/content/ComponentName;Ljava/util/List;)V

    return-void
.end method

.method public replaceFavoritesForStructure(Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 2
    .param p1    # Lcom/android/systemui/controls/controller/StructureInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "structureInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForStructure$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForStructure$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Lcom/android/systemui/controls/controller/StructureInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public seedFavoritesForComponents(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/controls/controller/SeedResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "componentNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    iget-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingInProgress:Z

    if-nez v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 383
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 384
    iget-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 389
    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$seedFavoritesForComponents$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$seedFavoritesForComponents$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/List;Ljava/util/function/Consumer;)V

    const-wide/16 p0, 0x1f4

    .line 391
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 388
    invoke-interface {v0, v1, p0, p1, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    goto :goto_1

    .line 1591
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 395
    new-instance v0, Lcom/android/systemui/controls/controller/SeedResponse;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "it.packageName"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/controls/controller/SeedResponse;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingInProgress:Z

    .line 401
    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->startSeeding(Ljava/util/List;Ljava/util/function/Consumer;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public subscribeToFavorites(Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/controller/StructureInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "structureInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 498
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    invoke-interface {p0, p1}, Lcom/android/systemui/controls/controller/ControlsBindingController;->subscribe(Lcom/android/systemui/controls/controller/StructureInfo;)V

    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .line 502
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 503
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    invoke-interface {p0}, Lcom/android/systemui/controls/controller/ControlsBindingController;->unsubscribe()V

    return-void
.end method
