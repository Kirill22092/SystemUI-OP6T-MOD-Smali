.class public Lcom/android/systemui/statusbar/MediaTransferManager;
.super Ljava/lang/Object;
.source "MediaTransferManager.java"


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mContext:Landroid/content/Context;

.field private mDevice:Lcom/android/settingslib/media/MediaDevice;

.field private mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field private final mMediaDeviceCallback:Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

.field private final mOnClickHandler:Landroid/view/View$OnClickListener;

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mViews:Ljava/util/List;

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/MediaTransferManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/MediaTransferManager$1;-><init>(Lcom/android/systemui/statusbar/MediaTransferManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mOnClickHandler:Landroid/view/View$OnClickListener;

    .line 87
    new-instance v0, Lcom/android/systemui/statusbar/MediaTransferManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/MediaTransferManager$2;-><init>(Lcom/android/systemui/statusbar/MediaTransferManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mMediaDeviceCallback:Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    .line 109
    iput-object p1, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mContext:Landroid/content/Context;

    .line 110
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p1, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 111
    const-class p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 112
    new-instance v0, Lcom/android/settingslib/media/InfoMediaManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/android/settingslib/media/InfoMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 113
    new-instance v1, Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1, v0, v2}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/media/InfoMediaManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/MediaTransferManager;Landroid/view/ViewParent;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MediaTransferManager;->getRowForParent(Landroid/view/ViewParent;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/MediaTransferManager;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/MediaTransferManager;)Lcom/android/settingslib/media/LocalMediaManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/MediaTransferManager;)Lcom/android/settingslib/media/MediaDevice;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mDevice:Lcom/android/settingslib/media/MediaDevice;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/MediaTransferManager;Lcom/android/settingslib/media/MediaDevice;)Lcom/android/settingslib/media/MediaDevice;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mDevice:Lcom/android/settingslib/media/MediaDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/MediaTransferManager;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MediaTransferManager;->updateAllChips()V

    return-void
.end method

.method private getRowForParent(Landroid/view/ViewParent;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0

    :goto_0
    if-eqz p1, :cond_1

    .line 137
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 138
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p1

    .line 140
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private updateAllChips()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 179
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MediaTransferManager;->updateChip(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateChip(Landroid/view/View;)V
    .locals 6

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MediaTransferManager;->getRowForParent(Landroid/view/ViewParent;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result v1

    .line 186
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 187
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getCurrentBackgroundTint()I

    move-result v0

    .line 190
    move-object v3, p1

    check-cast v3, Landroid/widget/LinearLayout;

    .line 191
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    const/4 v4, 0x0

    .line 192
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    const/4 v5, 0x2

    .line 193
    invoke-virtual {v3, v5, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 194
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const v1, 0x102036f

    .line 196
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x1020370

    .line 197
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 198
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 200
    iget-object v3, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mDevice:Lcom/android/settingslib/media/MediaDevice;

    if-eqz v3, :cond_1

    .line 201
    invoke-virtual {v3}, Lcom/android/settingslib/media/MediaDevice;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 202
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 205
    instance-of v2, v3, Lcom/android/settingslib/widget/AdaptiveIcon;

    if-eqz v2, :cond_0

    .line 206
    check-cast v3, Lcom/android/settingslib/widget/AdaptiveIcon;

    .line 207
    invoke-virtual {v3, v0}, Lcom/android/settingslib/widget/AdaptiveIcon;->setBackgroundColor(I)V

    .line 208
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/16 p0, 0x8

    .line 215
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p0, 0x1040308

    .line 216
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public applyMediaTransferView(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 152
    iget-object p2, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "settings_seamless_transfer"

    invoke-static {p2, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x102036e

    .line 157
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object p2, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mOnClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object p2, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mViews:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 165
    iget-object p2, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mViews:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object p2, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 167
    iget-object p2, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mMediaDeviceCallback:Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    invoke-virtual {p2, v0}, Lcom/android/settingslib/media/LocalMediaManager;->registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    .line 172
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p2}, Lcom/android/settingslib/media/LocalMediaManager;->startScan()V

    .line 173
    iget-object p2, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p2}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 174
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MediaTransferManager;->updateChip(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setRemoved(Landroid/view/View;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "settings_seamless_transfer"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x102036e

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object p1, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 128
    iget-object p1, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mMediaDeviceCallback:Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/media/LocalMediaManager;->unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    goto :goto_0

    .line 131
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tried to remove unknown view "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaTransferManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
