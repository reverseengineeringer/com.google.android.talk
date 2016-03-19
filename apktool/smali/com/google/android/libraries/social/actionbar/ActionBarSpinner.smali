.class public final Lcom/google/android/libraries/social/actionbar/ActionBarSpinner;
.super Landroid/widget/Spinner;
.source "SourceFile"


# instance fields
.field private a:Lhrw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/libraries/social/actionbar/ActionBarSpinner;->a:Lhrw;

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/google/android/libraries/social/actionbar/ActionBarSpinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lhrw;->a(I)V

    .line 57
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 59
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Lhrw;->a()V

    .line 62
    :cond_1
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/social/actionbar/ActionBarSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/social/actionbar/ActionBarSpinner;->a:Lhrw;

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/social/actionbar/ActionBarSpinner;->a:Lhrw;

    invoke-super {p0, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 87
    return-void

    .line 83
    :cond_0
    new-instance v0, Lhrw;

    invoke-direct {v0, p0, p1}, Lhrw;-><init>(Lcom/google/android/libraries/social/actionbar/ActionBarSpinner;Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Lcom/google/android/libraries/social/actionbar/ActionBarSpinner;->a:Lhrw;

    goto :goto_0
.end method
