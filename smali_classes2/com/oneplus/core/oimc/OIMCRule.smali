.class public Lcom/oneplus/core/oimc/OIMCRule;
.super Ljava/lang/Object;
.source "OIMCRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/core/oimc/OIMCRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final RULE_DISABLE_HEADSUPNOTIFICATION:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_DISABLE_HEADSUPNOTIFICATION_ZEN:Lcom/oneplus/core/oimc/OIMCRule;


# instance fields
.field private mAction:I

.field private mDifferenceSwitch:[Ljava/lang/String;

.field private mFuncName:Ljava/lang/String;

.field private mLevel:I

.field private mReserved:I

.field private mTriggerModes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 92
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    const-string v1, "GameMode"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "HeadsUpNotification"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_HEADSUPNOTIFICATION:Lcom/oneplus/core/oimc/OIMCRule;

    .line 99
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    const-string v1, "ZenMode"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "HeadsUpNotificationZen"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_HEADSUPNOTIFICATION_ZEN:Lcom/oneplus/core/oimc/OIMCRule;

    .line 452
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule$1;

    invoke-direct {v0}, Lcom/oneplus/core/oimc/OIMCRule$1;-><init>()V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 34
    iput v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mLevel:I

    .line 430
    invoke-virtual {p0, p1}, Lcom/oneplus/core/oimc/OIMCRule;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/core/oimc/OIMCRule$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 34
    iput v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mLevel:I

    .line 38
    iput-object p1, p0, Lcom/oneplus/core/oimc/OIMCRule;->mFuncName:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/oneplus/core/oimc/OIMCRule;->mAction:I

    .line 40
    iput-object p3, p0, Lcom/oneplus/core/oimc/OIMCRule;->mTriggerModes:[Ljava/lang/String;

    .line 41
    iput p4, p0, Lcom/oneplus/core/oimc/OIMCRule;->mReserved:I

    .line 42
    iput v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mLevel:I

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/oneplus/core/oimc/OIMCRule;->mDifferenceSwitch:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mFuncName:Ljava/lang/String;

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mAction:I

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mTriggerModes:[Ljava/lang/String;

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mReserved:I

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mLevel:I

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/core/oimc/OIMCRule;->mDifferenceSwitch:[Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 435
    iget-object p2, p0, Lcom/oneplus/core/oimc/OIMCRule;->mFuncName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget p2, p0, Lcom/oneplus/core/oimc/OIMCRule;->mAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget-object p2, p0, Lcom/oneplus/core/oimc/OIMCRule;->mTriggerModes:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 438
    iget p2, p0, Lcom/oneplus/core/oimc/OIMCRule;->mReserved:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget p2, p0, Lcom/oneplus/core/oimc/OIMCRule;->mLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget-object p0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mDifferenceSwitch:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
