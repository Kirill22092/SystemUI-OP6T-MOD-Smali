.class interface abstract Lcom/google/android/material/picker/DatePicker$DatePickerDelegate;
.super Ljava/lang/Object;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DatePickerDelegate"
.end annotation


# virtual methods
.method public abstract getDate()J
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
.end method

.method public abstract setAutoFillChangeListener(Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setFirstDayOfWeek(I)V
.end method

.method public abstract updateDate(III)V
.end method

.method public abstract updateDate(J)V
.end method
