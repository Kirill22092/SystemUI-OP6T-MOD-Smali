.class Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentView:I

.field private final mListPosition:I

.field private final mListPositionOffset:I

.field private final mMaxDate:J

.field private final mMinDate:J

.field private final mSelectedDay:I

.field private final mSelectedMonth:I

.field private final mSelectedYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 725
    new-instance v0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 667
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    .line 673
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    .line 674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/lib/widget/DatePicker$1;)V
    .locals 0

    .line 632
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIIJJ)V
    .locals 12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 644
    invoke-direct/range {v0 .. v11}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIIJJIII)V
    .locals 0

    .line 652
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 653
    iput p2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    .line 654
    iput p3, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    .line 655
    iput p4, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    .line 656
    iput-wide p5, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    .line 657
    iput-wide p7, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    .line 658
    iput p9, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    .line 659
    iput p10, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    .line 660
    iput p11, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    return-void
.end method


# virtual methods
.method public getCurrentView()I
    .locals 0

    .line 712
    iget p0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    return p0
.end method

.method public getListPosition()I
    .locals 0

    .line 716
    iget p0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    return p0
.end method

.method public getListPositionOffset()I
    .locals 0

    .line 720
    iget p0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    return p0
.end method

.method public getMaxDate()J
    .locals 2

    .line 708
    iget-wide v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 704
    iget-wide v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    return-wide v0
.end method

.method public getSelectedDay()I
    .locals 0

    .line 692
    iget p0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    return p0
.end method

.method public getSelectedMonth()I
    .locals 0

    .line 696
    iget p0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    return p0
.end method

.method public getSelectedYear()I
    .locals 0

    .line 700
    iget p0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 680
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 681
    iget p2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    iget p2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    iget p2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    iget-wide v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 685
    iget-wide v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 686
    iget p2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    iget p2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    iget p0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
