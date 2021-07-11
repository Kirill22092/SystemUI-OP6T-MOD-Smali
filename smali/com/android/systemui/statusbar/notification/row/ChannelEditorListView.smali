.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;
.super Landroid/widget/LinearLayout;
.source "ChannelEditorListView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelEditorListView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelEditorListView.kt\ncom/android/systemui/statusbar/notification/row/ChannelEditorListView\n*L\n1#1,270:1\n*E\n"
.end annotation


# instance fields
.field private appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

.field private appIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private appIconView:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private appName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final channelRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelRow;",
            ">;"
        }
    .end annotation
.end field

.field private channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channels:Ljava/util/List;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelRows:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$updateRows(Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->updateRows()V

    return-void
.end method

.method private final addChannelRow(Landroid/app/NotificationChannel;Landroid/view/LayoutInflater;)V
    .locals 2

    .line 133
    sget v0, Lcom/android/systemui/R$layout;->op_notif_half_shelf_row:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->setController(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    .line 136
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->setChannel(Landroid/app/NotificationChannel;)V

    .line 138
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelRows:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    const-string p0, "controller"

    .line 135
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.android.systemui.statusbar.notification.row.ChannelRow"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updateAppControlRow(Z)V
    .locals 8

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    const/4 v1, 0x0

    const-string v2, "appControlRow"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/AppControlView;->getChannelName()Landroid/widget/TextView;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 151
    sget v4, Lcom/android/systemui/R$string;->notification_channel_dialog_title:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/AppControlView;->getSwitch()Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 153
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/AppControlView;->getSwitch()Landroid/widget/Switch;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateAppControlRow$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateAppControlRow$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final updateRows()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->areAppNotificationsEnabled()Z

    move-result v0

    .line 91
    new-instance v1, Landroid/transition/AutoTransition;

    invoke-direct {v1}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v2, 0xc8

    .line 92
    invoke-virtual {v1, v2, v3}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    .line 93
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateRows$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateRows$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;)V

    invoke-virtual {v1, v2}, Landroid/transition/AutoTransition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 110
    invoke-static {p0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    .line 114
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 118
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->updateAppControlRow(Z)V

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    const-string v3, "inflater"

    .line 123
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->addChannelRow(Landroid/app/NotificationChannel;Landroid/view/LayoutInflater;)V

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    const-string p0, "controller"

    .line 89
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final getController()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "controller"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final highlightChannel(Landroid/app/NotificationChannel;)V
    .locals 2
    .param p1    # Landroid/app/NotificationChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelRows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    .line 82
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->playHighlight()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 67
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 69
    sget v0, Lcom/android/systemui/R$id;->app_control:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.app_control)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/AppControlView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    .line 71
    sget v0, Lcom/android/systemui/R$id;->notification_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appIconView:Landroid/widget/ImageView;

    return-void
.end method

.method public final setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appName:Ljava/lang/String;

    return-void
.end method

.method public final setChannels(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channels:Ljava/util/List;

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->updateRows()V

    return-void
.end method

.method public final setController(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    return-void
.end method
