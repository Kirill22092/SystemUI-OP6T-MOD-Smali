.class Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$3;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$3;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$3;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->access$300(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/oneplus/commonctrl/R$id;->date_picker_header_year:I

    if-ne v0, v1, :cond_0

    .line 238
    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$3;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->access$100(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;I)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/oneplus/commonctrl/R$id;->date_picker_header_date:I

    if-ne p1, v0, :cond_1

    .line 240
    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$3;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->access$100(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;I)V

    :cond_1
    :goto_0
    return-void
.end method
