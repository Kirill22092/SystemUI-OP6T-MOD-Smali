.class public Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
.super Ljava/lang/Object;
.source "BottomNavigationNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/lib/design/widget/BottomNavigationNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackgroundColor:I

.field private mIndeterminate:Z

.field private mNumber:I

.field private mTextColor:I

.field private udbc:I

.field private udtc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udtc:I

    .line 20
    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udbc:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udtc:I

    .line 20
    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udbc:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mNumber:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mTextColor:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mBackgroundColor:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udtc:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udbc:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mIndeterminate:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIndeterminate()Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mIndeterminate:Z

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 65
    iget p2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget p2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mTextColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget p2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget p2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udtc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget p2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udbc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-boolean p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mIndeterminate:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
