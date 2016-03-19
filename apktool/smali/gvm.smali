.class public final Lgvm;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lgvn;


# static fields
.field private static final a:Lgvp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 75
    new-instance v0, Lgvq;

    invoke-direct {v0}, Lgvq;-><init>()V

    sput-object v0, Lgvm;->a:Lgvp;

    .line 79
    :goto_0
    sget-object v0, Lgvm;->a:Lgvp;

    invoke-virtual {v0}, Lgvp;->a()V

    .line 80
    return-void

    .line 77
    :cond_0
    new-instance v0, Lgvp;

    invoke-direct {v0}, Lgvp;-><init>()V

    sput-object v0, Lgvm;->a:Lgvp;

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 173
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 174
    sparse-switch v0, :sswitch_data_0

    .line 183
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 184
    sparse-switch v0, :sswitch_data_1

    .line 192
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 193
    return-void

    .line 177
    :sswitch_0
    sget-object v1, Lgvm;->a:Lgvp;

    invoke-virtual {v1, p0}, Lgvp;->a(Lgvn;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 179
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 178
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 187
    :sswitch_1
    sget-object v1, Lgvm;->a:Lgvp;

    invoke-virtual {v1, p0}, Lgvp;->b(Lgvn;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 189
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 188
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    .line 174
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 184
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setPadding(IIII)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method
