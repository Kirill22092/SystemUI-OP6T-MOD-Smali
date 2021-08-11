.class public Lcom/android/launcher3/icons/IconFactory;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source "IconFactory.java"


# static fields
.field private static sPool:Lcom/android/launcher3/icons/IconFactory;

.field private static sPoolId:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field private final mPoolId:I

.field private next:Lcom/android/launcher3/icons/IconFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/IconFactory;->sPoolSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    iput p4, p0, Lcom/android/launcher3/icons/IconFactory;->mPoolId:I

    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/IconFactory;
    .locals 5

    sget-object v0, Lcom/android/launcher3/icons/IconFactory;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    iget-object v1, p0, Lcom/android/launcher3/icons/IconFactory;->next:Lcom/android/launcher3/icons/IconFactory;

    sput-object v1, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/icons/IconFactory;->next:Lcom/android/launcher3/icons/IconFactory;

    monitor-exit v0

    return-object p0

    :cond_0
    sget v1, Lcom/android/launcher3/icons/IconFactory;->sPoolId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/launcher3/icons/IconFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/icons/R$dimen;->default_icon_bitmap_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/android/launcher3/icons/IconFactory;-><init>(Landroid/content/Context;III)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/IconFactory;->recycle()V

    return-void
.end method

.method public recycle()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/icons/IconFactory;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/launcher3/icons/IconFactory;->sPoolId:I

    iget v2, p0, Lcom/android/launcher3/icons/IconFactory;->mPoolId:I

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->clear()V

    sget-object v1, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    iput-object v1, p0, Lcom/android/launcher3/icons/IconFactory;->next:Lcom/android/launcher3/icons/IconFactory;

    sput-object p0, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
