.class Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;
.super Ljava/lang/Object;
.source "BubbleViewInfoTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleViewInfoTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BubbleViewInfo"
.end annotation


# instance fields
.field appName:Ljava/lang/String;

.field badgedAppIcon:Landroid/graphics/drawable/Drawable;

.field badgedBubbleImage:Landroid/graphics/Bitmap;

.field dotColor:I

.field dotPath:Landroid/graphics/Path;

.field expandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

.field flyoutMessage:Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;

.field imageView:Lcom/android/systemui/bubbles/BadgedImageView;

.field shortcutInfo:Landroid/content/pm/ShortcutInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static populate(Landroid/content/Context;Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleIconFactory;Lcom/android/systemui/bubbles/Bubble;Z)Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;
    .locals 4

    .line 131
    new-instance v0, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    invoke-direct {v0}, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;-><init>()V

    if-nez p4, :cond_0

    .line 134
    invoke-virtual {p3}, Lcom/android/systemui/bubbles/Bubble;->isInflated()Z

    move-result p4

    if-nez p4, :cond_0

    .line 135
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    .line 136
    sget v1, Lcom/android/systemui/R$layout;->bubble_view:I

    const/4 v2, 0x0

    invoke-virtual {p4, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/BadgedImageView;

    iput-object v1, v0, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->imageView:Lcom/android/systemui/bubbles/BadgedImageView;

    .line 139
    sget v1, Lcom/android/systemui/R$layout;->bubble_expanded_view:I

    invoke-virtual {p4, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/bubbles/BubbleExpandedView;

    iput-object p4, v0, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->expandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    .line 141
    invoke-virtual {p4, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setStackView(Lcom/android/systemui/bubbles/BubbleStackView;)V

    .line 144
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p3}, Lcom/android/systemui/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 149
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p4, 0x0

    .line 155
    :try_start_0
    invoke-virtual {p3}, Lcom/android/systemui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0xc2200

    .line 154
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 161
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->appName:Ljava/lang/String;

    .line 163
    :cond_2
    invoke-virtual {p3}, Lcom/android/systemui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 164
    invoke-virtual {p3}, Lcom/android/systemui/bubbles/Bubble;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 173
    invoke-virtual {p3}, Lcom/android/systemui/bubbles/Bubble;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 172
    invoke-virtual {p2, p0, v2, v3}, Lcom/android/systemui/bubbles/BubbleIconFactory;->getBubbleDrawable(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 180
    :goto_0
    invoke-virtual {p3}, Lcom/android/systemui/bubbles/Bubble;->isImportantConversation()Z

    move-result v2

    .line 179
    invoke-virtual {p2, p1, v2}, Lcom/android/systemui/bubbles/BubbleIconFactory;->getBadgeBitmap(Landroid/graphics/drawable/Drawable;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2

    .line 181
    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->badgedAppIcon:Landroid/graphics/drawable/Drawable;

    .line 182
    invoke-virtual {p2, v1, v2}, Lcom/android/systemui/bubbles/BubbleIconFactory;->getBubbleBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->badgedBubbleImage:Landroid/graphics/Bitmap;

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x104022c

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    .line 188
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 189
    invoke-virtual {p2}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object p2

    invoke-virtual {p2, v1, p4, p4, p4}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result p2

    const/high16 p4, 0x42480000    # 50.0f

    .line 192
    invoke-virtual {v3, p2, p2, p4, p4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 194
    invoke-virtual {p1, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 195
    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotPath:Landroid/graphics/Path;

    .line 196
    iget p1, v2, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    const/4 p2, -0x1

    const p4, 0x3f0a3d71    # 0.54f

    invoke-static {p1, p2, p4}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, v0, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotColor:I

    .line 200
    invoke-virtual {p3}, Lcom/android/systemui/bubbles/Bubble;->getFlyoutMessage()Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->flyoutMessage:Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;

    if-eqz p1, :cond_4

    .line 202
    iget-object p2, p1, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;->senderIcon:Landroid/graphics/drawable/Icon;

    .line 203
    invoke-static {p0, p2}, Lcom/android/systemui/bubbles/BubbleViewInfoTask;->loadSenderAvatar(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    :cond_4
    return-object v0

    .line 167
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to find package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/systemui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p4
.end method
