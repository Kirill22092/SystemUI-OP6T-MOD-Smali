.class public final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;
.super Ljava/lang/Object;
.source "ControlsUiControllerImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/ui/ControlsUiController;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsUiControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsUiControllerImpl.kt\ncom/android/systemui/controls/ui/ControlsUiControllerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,575:1\n1313#2:576\n1382#2,3:577\n1088#2,4:580\n1591#2,2:584\n1591#2,2:586\n1064#2,2:588\n1088#2,4:590\n1373#2:594\n1591#2,2:595\n1374#2:597\n1591#2,2:598\n240#2,2:600\n205#2,2:602\n1591#2,2:606\n240#2,2:608\n149#3,2:604\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsUiControllerImpl.kt\ncom/android/systemui/controls/ui/ControlsUiControllerImpl\n*L\n160#1:576\n160#1,3:577\n162#1,4:580\n214#1,2:584\n318#1,2:586\n322#1,2:588\n322#1,4:590\n324#1:594\n324#1,2:595\n324#1:597\n388#1,2:598\n459#1,2:600\n473#1,2:602\n514#1,2:606\n542#1,2:608\n492#1,2:604\n*E\n"
.end annotation


# static fields
.field private static final EMPTY_COMPONENT:Landroid/content/ComponentName;

.field private static final EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;


# instance fields
.field private final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private allStructures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final collator:Ljava/text/Collator;

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlViewsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/controls/ui/ControlKey;",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/controls/ui/ControlKey;",
            "Lcom/android/systemui/controls/ui/ControlWithState;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsListingController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dismissGlobalActions:Ljava/lang/Runnable;

.field private hidden:Z

.field private listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

.field private final localeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private final onSeedingComplete:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Landroid/view/ViewGroup;

.field private popup:Landroid/widget/ListPopupWindow;

.field private final popupThemedContext:Landroid/view/ContextThemeWrapper;

.field private selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

.field private final shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final sharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 87
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v3, Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    sput-object v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Landroid/content/SharedPreferences;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/phone/ShadeController;)V
    .locals 1
    .param p1    # Ldagger/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ldagger/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/controls/ui/ControlActionCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/plugins/ActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/android/systemui/statusbar/phone/ShadeController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinator;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ")V"
        }
    .end annotation

    const-string v0, "controlsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsListingController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedPreferences"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlActionCoordinator"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shadeController"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p7, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    iput-object p8, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p9, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 95
    sget-object p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 97
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    .line 98
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    .line 104
    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    sget p3, Lcom/android/systemui/R$style;->Control_ListPopupWindow:I

    invoke-direct {p1, p2, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popupThemedContext:Landroid/view/ContextThemeWrapper;

    .line 106
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "context.resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const-string p2, "context.resources.configuration"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->collator:Ljava/text/Collator;

    const-string p2, "collator"

    .line 107
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$$special$$inlined$compareBy$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$$special$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->localeComparator:Ljava/util/Comparator;

    .line 111
    new-instance p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onSeedingComplete:Ljava/util/function/Consumer;

    return-void
.end method

.method public static final synthetic access$getControlViewsById$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Ljava/util/Map;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getControlsById$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Ljava/util/Map;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getDismissGlobalActions$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->dismissGlobalActions:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "dismissGlobalActions"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getEMPTY_STRUCTURE$cp()Lcom/android/systemui/controls/controller/StructureInfo;
    .locals 1

    .line 69
    sget-object v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    return-object v0
.end method

.method public static final synthetic access$getParent$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "parent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getPopupThemedContext$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Landroid/view/ContextThemeWrapper;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popupThemedContext:Landroid/view/ContextThemeWrapper;

    return-object p0
.end method

.method public static final synthetic access$getSelectedStructure$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Lcom/android/systemui/controls/controller/StructureInfo;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    return-object p0
.end method

.method public static final synthetic access$getShadeController$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Lcom/android/systemui/statusbar/phone/ShadeController;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method

.method public static final synthetic access$reload(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->reload(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final synthetic access$setPopup$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/widget/ListPopupWindow;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popup:Landroid/widget/ListPopupWindow;

    return-void
.end method

.method public static final synthetic access$setSelectedStructure$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    return-void
.end method

.method public static final synthetic access$showControlsView(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->showControlsView(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$showInitialSetupView(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->showInitialSetupView(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$showSeedingView(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->showSeedingView(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$startEditingActivity(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startEditingActivity(Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;)V

    return-void
.end method

.method public static final synthetic access$startFavoritingActivity(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startFavoritingActivity(Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;)V

    return-void
.end method

.method public static final synthetic access$startProviderSelectorActivity(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startProviderSelectorActivity(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$switchAppOrStructure(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/ui/SelectionItem;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->switchAppOrStructure(Lcom/android/systemui/controls/ui/SelectionItem;)V

    return-void
.end method

.method public static final synthetic access$updatePreferences(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->updatePreferences(Lcom/android/systemui/controls/controller/StructureInfo;)V

    return-void
.end method

.method private final createCallback(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ">;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;"
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method private final createDropDown(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ">;)V"
        }
    .end annotation

    .line 1591
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 319
    sget-object v2, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/SelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/SelectionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->registerComponentIcon(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 1064
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1065
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1088
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1089
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 322
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/SelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 323
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->allStructures:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 1591
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1373
    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 325
    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/controls/ui/SelectionItem;

    if-eqz v6, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/systemui/controls/ui/SelectionItem;->copy$default(Lcom/android/systemui/controls/ui/SelectionItem;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;ILjava/lang/Object;)Lcom/android/systemui/controls/ui/SelectionItem;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v3

    :goto_3
    if-eqz v4, :cond_2

    .line 1373
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 327
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->localeComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 329
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->findSelectionItem(Lcom/android/systemui/controls/controller/StructureInfo;Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectionItem;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 331
    :goto_4
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v4, Lcom/android/systemui/controls/ui/ItemAdapter;

    iget-object v5, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$layout;->controls_spinner_item:I

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/controls/ui/ItemAdapter;-><init>(Landroid/content/Context;I)V

    .line 332
    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 331
    iput-object v4, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 340
    iget-object v4, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    const-string v5, "parent"

    if-eqz v4, :cond_9

    sget v6, Lcom/android/systemui/R$id;->app_or_structure_spinner:I

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 341
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/SelectionItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 344
    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "context"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/android/systemui/R$color;->control_spinner_dropdown:I

    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 347
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 348
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 352
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    sget v1, Lcom/android/systemui/R$id;->controls_header:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 353
    new-instance v1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$3;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 352
    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 343
    :cond_8
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 340
    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_a
    const-string p0, "allStructures"

    .line 324
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final createListView()V
    .locals 18

    move-object/from16 v0, p0

    .line 381
    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 382
    sget v2, Lcom/android/systemui/R$layout;->controls_with_favorites:I

    iget-object v3, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    const-string v5, "parent"

    if-eqz v3, :cond_a

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 384
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->findMaxColumns()I

    move-result v2

    .line 386
    iget-object v3, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v3, :cond_9

    sget v4, Lcom/android/systemui/R$id;->global_actions_controls_list:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup"

    if-eqz v3, :cond_8

    check-cast v3, Landroid/view/ViewGroup;

    const-string v5, "inflater"

    .line 387
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createRow(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 388
    iget-object v7, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v7}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v7

    .line 1591
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 389
    new-instance v10, Lcom/android/systemui/controls/ui/ControlKey;

    iget-object v11, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v11}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v11, v8}, Lcom/android/systemui/controls/ui/ControlKey;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 390
    iget-object v8, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v8, :cond_0

    .line 391
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ne v11, v2, :cond_1

    .line 392
    invoke-direct {v0, v1, v3}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createRow(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 395
    :cond_1
    sget v11, Lcom/android/systemui/R$layout;->controls_base_item:I

    .line 394
    invoke-virtual {v1, v11, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_4

    move-object v13, v11

    check-cast v13, Landroid/view/ViewGroup;

    .line 397
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    add-int/2addr v11, v6

    if-ne v11, v2, :cond_3

    .line 398
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-eqz v11, :cond_2

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 399
    iput v9, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 400
    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 398
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_3
    :goto_1
    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 404
    new-instance v9, Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 406
    iget-object v11, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {v11}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v11

    const-string v12, "controlsController.get()"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v11

    check-cast v14, Lcom/android/systemui/controls/controller/ControlsController;

    .line 407
    iget-object v15, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 408
    iget-object v11, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 409
    iget-object v12, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-object/from16 v17, v12

    move-object v12, v9

    move-object/from16 v16, v11

    .line 404
    invoke-direct/range {v12 .. v17}, Lcom/android/systemui/controls/ui/ControlViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;)V

    .line 411
    invoke-virtual {v9, v8}, Lcom/android/systemui/controls/ui/ControlViewHolder;->bindData(Lcom/android/systemui/controls/ui/ControlWithState;)V

    .line 412
    iget-object v8, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/controls/ui/ControlViewHolder;

    goto/16 :goto_0

    .line 394
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_5
    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v1, v2

    if-nez v1, :cond_6

    move v2, v9

    goto :goto_2

    :cond_6
    sub-int/2addr v2, v1

    :goto_2
    if-lez v2, :cond_7

    .line 420
    new-instance v1, Landroid/widget/Space;

    iget-object v3, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v9, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_7
    return-void

    .line 386
    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 382
    :cond_a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method private final createMenu()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->controls_menu_add:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 277
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->controls_menu_edit:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 284
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$layout;->controls_more_item:I

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget v2, Lcom/android/systemui/R$id;->controls_more:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 287
    new-instance v2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/widget/ImageView;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p0, "parent"

    .line 286
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final createRow(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1

    .line 536
    sget p0, Lcom/android/systemui/R$layout;->controls_row:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    .line 537
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0

    .line 536
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final findMaxColumns()I
    .locals 5

    .line 430
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 431
    sget v0, Lcom/android/systemui/R$integer;->controls_max_columns:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 433
    sget v1, Lcom/android/systemui/R$integer;->controls_max_columns_adjust_below_width_dp:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 435
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 436
    sget v3, Lcom/android/systemui/R$dimen;->controls_max_columns_adjust_above_font_scale:I

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 437
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const-string v3, "res"

    .line 439
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 440
    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 444
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_1

    if-gt v3, v1, :cond_1

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float p0, p0, v2

    if-ltz p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method

.method private final findSelectionItem(Lcom/android/systemui/controls/controller/StructureInfo;Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectionItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ">;)",
            "Lcom/android/systemui/controls/ui/SelectionItem;"
        }
    .end annotation

    .line 240
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 543
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/SelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/SelectionItem;->getStructure()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 241
    :goto_1
    check-cast p2, Lcom/android/systemui/controls/ui/SelectionItem;

    return-object p2
.end method

.method private final loadPreference(Ljava/util/List;)Lcom/android/systemui/controls/controller/StructureInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;)",
            "Lcom/android/systemui/controls/controller/StructureInfo;"
        }
    .end annotation

    .line 452
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    return-object p0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "controls_component"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 455
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 456
    :cond_1
    sget-object v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    .line 457
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "controls_structure"

    const-string v3, ""

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 240
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 460
    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    if-eqz v5, :cond_2

    move-object v2, v3

    .line 241
    :cond_4
    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    if-eqz v2, :cond_5

    goto :goto_2

    .line 461
    :cond_5
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    :goto_2
    return-object v2
.end method

.method private final putIntentExtras(Landroid/content/Intent;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 1

    .line 241
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/ControlsListingController;

    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/systemui/controls/management/ControlsListingController;->getAppLabel(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "extra_app_label"

    .line 240
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "extra_structure"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    const-string p2, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method private final reload(Landroid/view/ViewGroup;)V
    .locals 3

    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {v0}, Lcom/android/systemui/controls/controller/ControlsController;->unsubscribe()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 178
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 179
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 181
    new-instance v1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    const-string p0, "listingCallback"

    .line 175
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private final showControlsView(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ">;)V"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 269
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createListView()V

    .line 270
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createDropDown(Ljava/util/List;)V

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createMenu()V

    return-void
.end method

.method private final showInitialSetupView(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ">;)V"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 205
    sget v1, Lcom/android/systemui/R$layout;->controls_no_favorites:I

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const-string v4, "parent"

    if-eqz v2, :cond_7

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 207
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    sget v2, Lcom/android/systemui/R$id;->controls_no_favorites_group:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    if-eqz v1, :cond_5

    check-cast v1, Landroid/view/ViewGroup;

    .line 208
    new-instance v5, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showInitialSetupView$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showInitialSetupView$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v5, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    sget v6, Lcom/android/systemui/R$id;->controls_subtitle:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 211
    iget-object v6, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$string;->quick_controls_subtitle:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz p0, :cond_3

    sget v3, Lcom/android/systemui/R$id;->controls_icon_row:I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    .line 1591
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 215
    sget v3, Lcom/android/systemui/R$layout;->controls_icon:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Landroid/widget/ImageView;

    .line 216
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/SelectionItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/SelectionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 215
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    .line 213
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 210
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 207
    :cond_5
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 205
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final showSeedingView(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ">;)V"
        }
    .end annotation

    .line 197
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 198
    sget v0, Lcom/android/systemui/R$layout;->controls_no_favorites:I

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const-string v3, "parent"

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 199
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    sget v0, Lcom/android/systemui/R$id;->controls_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 200
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->controls_seeding_in_progress:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 199
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "extra_animate"

    const/4 v1, 0x1

    .line 256
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->dismissGlobalActions:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$startActivity$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$startActivity$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {v0, v3, v2, v1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void

    :cond_0
    const-string p0, "dismissGlobalActions"

    .line 257
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final startEditingActivity(Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 1

    .line 227
    const-class v0, Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startTargetedActivity(Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;Ljava/lang/Class;)V

    return-void
.end method

.method private final startFavoritingActivity(Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 1

    .line 223
    const-class v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startTargetedActivity(Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;Ljava/lang/Class;)V

    return-void
.end method

.method private final startProviderSelectorActivity(Landroid/content/Context;)V
    .locals 2

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private final startTargetedActivity(Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p3, 0x14000000

    .line 232
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 234
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->putIntentExtras(Landroid/content/Intent;Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 235
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private final switchAppOrStructure(Lcom/android/systemui/controls/ui/SelectionItem;)V
    .locals 6

    .line 473
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->allStructures:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 205
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 474
    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/SelectionItem;->getStructure()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/SelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    .line 477
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_3

    .line 478
    iput-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 479
    invoke-direct {p0, v2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->updatePreferences(Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 480
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->reload(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_2
    const-string p0, "parent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    return-void

    .line 206
    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string p0, "allStructures"

    .line 473
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final updatePreferences(Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 2

    .line 465
    sget-object v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 466
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 467
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "controls_component"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 468
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "controls_structure"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 469
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public closeDialogs(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 486
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismissImmediate()V

    goto :goto_0

    .line 488
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 490
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popup:Landroid/widget/ListPopupWindow;

    .line 492
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    .line 149
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 493
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->dismiss()V

    goto :goto_1

    .line 495
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    invoke-interface {p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->closeDialogs()V

    return-void
.end method

.method public getAvailable()Z
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {p0}, Lcom/android/systemui/controls/controller/ControlsController;->getAvailable()Z

    move-result p0

    return p0
.end method

.method public final getControlsController()Ldagger/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 70
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    return-object p0
.end method

.method public final getUiExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public hide()V
    .locals 2

    const/4 v0, 0x1

    .line 499
    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    .line 501
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->closeDialogs(Z)V

    .line 502
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {v0}, Lcom/android/systemui/controls/controller/ControlsController;->unsubscribe()V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 506
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 510
    sget-object p0, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->clearCache()V

    return-void

    :cond_0
    const-string p0, "listingCallback"

    .line 508
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "parent"

    .line 504
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
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

    .line 529
    new-instance v0, Lcom/android/systemui/controls/ui/ControlKey;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/controls/ui/ControlKey;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 530
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;

    invoke-direct {p2, p0, v0, p3}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/ui/ControlKey;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRefreshState(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 8
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;)V"
        }
    .end annotation

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1591
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/service/controls/Control;

    .line 515
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    new-instance v1, Lcom/android/systemui/controls/ui/ControlKey;

    invoke-virtual {v4}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "c.getControlId()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/controls/ui/ControlKey;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v0, :cond_0

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshState() for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ControlsUiController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v5, Lcom/android/systemui/controls/ui/ControlWithState;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v0

    invoke-direct {v5, p1, v0, v4}, Lcom/android/systemui/controls/ui/ControlWithState;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/Control;)V

    .line 518
    new-instance v2, Lcom/android/systemui/controls/ui/ControlKey;

    invoke-virtual {v4}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1, v0}, Lcom/android/systemui/controls/ui/ControlKey;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v7, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onRefreshState$$inlined$forEach$lambda$1;

    move-object v1, v7

    move-object v3, v5

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onRefreshState$$inlined$forEach$lambda$1;-><init>(Lcom/android/systemui/controls/ui/ControlKey;Lcom/android/systemui/controls/ui/ControlWithState;Landroid/service/controls/Control;Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/content/ComponentName;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public show(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismissGlobalActions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ControlsUiController"

    const-string/jumbo v1, "show()"

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 148
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->dismissGlobalActions:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 149
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    .line 151
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {p1}, Lcom/android/systemui/controls/controller/ControlsController;->getFavorites()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->allStructures:Ljava/util/List;

    const-string p2, "allStructures"

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 152
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->loadPreference(Ljava/util/List;)Lcom/android/systemui/controls/controller/StructureInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 154
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onSeedingComplete:Ljava/util/function/Consumer;

    invoke-interface {p1, v1}, Lcom/android/systemui/controls/controller/ControlsController;->addSeedingFavoritesCallback(Ljava/util/function/Consumer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    new-instance p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createCallback(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    goto/16 :goto_2

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->allStructures:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_2

    .line 158
    new-instance p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$2;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createCallback(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    goto :goto_2

    .line 156
    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object p1

    .line 1313
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1382
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1383
    check-cast v1, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 161
    new-instance v2, Lcom/android/systemui/controls/ui/ControlWithState;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v3}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/android/systemui/controls/ui/ControlWithState;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/Control;)V

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    .line 1088
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1089
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/controls/ui/ControlWithState;

    .line 163
    new-instance v3, Lcom/android/systemui/controls/ui/ControlKey;

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/controls/ui/ControlKey;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 165
    :cond_4
    new-instance p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$5;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createCallback(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    .line 166
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController;

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-interface {p1, p2}, Lcom/android/systemui/controls/controller/ControlsController;->subscribeToFavorites(Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 169
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    if-eqz p0, :cond_5

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void

    :cond_5
    const-string p0, "listingCallback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_6
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
