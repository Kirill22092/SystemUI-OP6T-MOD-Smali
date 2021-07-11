.class public final Lcom/android/systemui/statusbar/notification/row/DungeonRow;
.super Landroid/widget/LinearLayout;
.source "DungeonRow.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDungeonRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DungeonRow.kt\ncom/android/systemui/statusbar/notification/row/DungeonRow\n*L\n1#1,44:1\n*E\n"
.end annotation


# instance fields
.field private entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final update()V
    .locals 3

    .line 35
    sget v0, Lcom/android/systemui/R$id;->app_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/TextView;

    .line 36
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/DungeonRow;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    sget v0, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/DungeonRow;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    return-void

    .line 39
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.android.systemui.statusbar.StatusBarIconView"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 28
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/DungeonRow;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public final setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/DungeonRow;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/DungeonRow;->update()V

    return-void
.end method
