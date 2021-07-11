.class public Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;
.super Ljava/lang/Object;
.source "RtlViewPager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# instance fields
.field private final mLayoutDirection:I

.field private final mViewPagerSavedState:Landroid/os/Parcelable;


# direct methods
.method private constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mViewPagerSavedState:Landroid/os/Parcelable;

    .line 127
    iput p2, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mLayoutDirection:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;ILcom/android/systemui/qs/customize/RtlViewPager$1;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;)I
    .locals 0

    .line 121
    iget p0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mLayoutDirection:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;)Landroid/os/Parcelable;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mViewPagerSavedState:Landroid/os/Parcelable;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mViewPagerSavedState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 146
    iget p0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mLayoutDirection:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
