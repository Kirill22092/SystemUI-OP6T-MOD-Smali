.class Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;-><init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/oneplus/lib/widget/NumberPicker;II)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$000(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    .line 108
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$400(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result p1

    .line 109
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$400(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    if-ne p3, p1, :cond_1

    .line 111
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$500(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 112
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    .line 113
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {p2}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$102(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;Z)Z

    .line 114
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {p2}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$200(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    .line 116
    :cond_0
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {p2}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$500(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    goto :goto_0

    :cond_1
    if-ne p2, p1, :cond_3

    if-ne p3, v0, :cond_3

    .line 118
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$500(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 119
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result p2

    if-nez p2, :cond_2

    const/16 p2, 0xb

    if-ne p1, p2, :cond_2

    .line 120
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {p2}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$102(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;Z)Z

    .line 121
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {p2}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$200(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    .line 123
    :cond_2
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {p2}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$500(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    .line 125
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {p0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$300(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    return-void
.end method
