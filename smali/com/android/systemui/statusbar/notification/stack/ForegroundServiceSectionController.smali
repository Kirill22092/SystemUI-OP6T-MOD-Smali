.class public final Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;
.super Ljava/lang/Object;
.source "ForegroundServiceSectionController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForegroundServiceSectionController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForegroundServiceSectionController.kt\ncom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,172:1\n919#2:173\n1591#2,2:174\n*E\n*S KotlinDebug\n*F\n+ 1 ForegroundServiceSectionController.kt\ncom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController\n*L\n146#1:173\n146#1,2:174\n*E\n"
.end annotation


# instance fields
.field private final entries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private entriesView:Landroid/view/View;

.field private final entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final featureController:Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entryManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->featureController:Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;

    .line 53
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entries:Ljava/util/Set;

    .line 58
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->featureController:Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;->isForegroundServiceDismissalEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance p2, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$sam$com_android_systemui_statusbar_NotificationRemoveInterceptor$0;

    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$sam$com_android_systemui_statusbar_NotificationRemoveInterceptor$0;-><init>(Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationRemoveInterceptor(Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;)V

    .line 61
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance p2, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$addEntry(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->addEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static final synthetic access$getEntries$p(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;)Ljava/util/Set;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entries:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$removeEntry(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->removeEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static final synthetic access$shouldInterceptRemoval(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->shouldInterceptRemoval(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$update(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->update()V

    return-void
.end method

.method private final addEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 118
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 119
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entries:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final removeEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 113
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 114
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entries:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private final shouldInterceptRemoval(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 4

    .line 78
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-eq p3, v2, :cond_2

    if-ne p3, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v2, p1

    :goto_2
    const/16 v3, 0x8

    if-eq p3, v3, :cond_3

    const/16 v3, 0x9

    :cond_3
    const/16 v3, 0xc

    if-ne p3, v3, :cond_4

    move p3, p1

    goto :goto_3

    :cond_4
    move p3, v0

    :goto_3
    if-nez p2, :cond_5

    return v0

    :cond_5
    const-string v3, "entry.sbn"

    if-eqz v2, :cond_7

    .line 89
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v2

    if-nez v2, :cond_7

    .line 90
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->hasEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 91
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->addEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->update()V

    .line 96
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const-string p2, "FgsSectionController.onNotificationRemoveRequested"

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    return p1

    :cond_7
    if-nez v1, :cond_8

    if-eqz p3, :cond_9

    .line 99
    :cond_8
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result p3

    if-nez p3, :cond_9

    return p1

    .line 103
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->hasEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 104
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->removeEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->update()V

    :cond_a
    return v0
.end method

.method private final update()V
    .locals 6

    .line 139
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entriesView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 146
    sget v2, Lcom/android/systemui/R$id;->entry_list:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/widget/LinearLayout;

    .line 147
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 148
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entries:Ljava/util/Set;

    .line 919
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$$special$$inlined$sortedBy$1;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$$special$$inlined$sortedBy$1;-><init>()V

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 1591
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 149
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 150
    sget v5, Lcom/android/systemui/R$layout;->foreground_service_dungeon_row:I

    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/DungeonRow;

    .line 152
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/row/DungeonRow;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 153
    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$$inlined$apply$lambda$1;

    invoke-direct {v5, v4, v3, v0, p0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/statusbar/notification/row/DungeonRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/widget/LinearLayout;Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 150
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.android.systemui.statusbar.notification.row.DungeonRow"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entriesView:Landroid/view/View;

    if-eqz p0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 168
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entriesView:Landroid/view/View;

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void

    .line 146
    :cond_4
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 141
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ForegroundServiceSectionController is trying to show dismissed fgs notifications without having been initialized!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final createView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "li"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget v0, Lcom/android/systemui/R$layout;->foreground_service_dungeon:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entriesView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entriesView:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 134
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public final getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 47
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method public final hasEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->entries:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
