.class final Lbrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhv;


# instance fields
.field private final a:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

.field private final b:Lbfd;

.field private final c:Landroid/widget/ImageView;

.field private d:Lbhs;


# direct methods
.method public constructor <init>(Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;Lbfd;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lbrg;->a:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    .line 40
    iput-object p2, p0, Lbrg;->b:Lbfd;

    .line 41
    iput-object p3, p0, Lbrg;->c:Landroid/widget/ImageView;

    .line 42
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lbrg;->d:Lbhs;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lbrg;->d:Lbhs;

    invoke-virtual {v0}, Lbhs;->b()V

    .line 52
    :cond_0
    return-void
.end method

.method public a(Lbhs;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lbrg;->d:Lbhs;

    .line 46
    return-void
.end method

.method public a(Leys;Lexs;ZLbhs;Z)V
    .locals 9

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xb

    const/16 v6, 0x9

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 61
    if-eqz p1, :cond_0

    .line 62
    const-string v0, "Babel"

    const-string v1, "Unexpected refCountedBitmap returned on a STICKER_REQUEST"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p1}, Leys;->b()V

    .line 68
    :cond_0
    iget-object v0, p0, Lbrg;->d:Lbhs;

    if-eq p4, v0, :cond_2

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lbrg;->d:Lbhs;

    .line 76
    if-eqz p3, :cond_1

    .line 81
    if-eqz p2, :cond_1

    .line 85
    const/4 v0, 0x1

    .line 86
    invoke-virtual {p4}, Lbhs;->l()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 87
    invoke-virtual {p4}, Lbhs;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1043
    invoke-static {v0, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    move v1, v0

    .line 92
    :goto_1
    iget-object v0, p0, Lbrg;->c:Landroid/widget/ImageView;

    .line 93
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_3

    .line 1134
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1135
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1136
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 104
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 117
    invoke-virtual {v0, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 120
    :goto_3
    iget-object v1, p0, Lbrg;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v0, p0, Lbrg;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    invoke-virtual {p2}, Lexs;->c()[B

    move-result-object v0

    invoke-static {v0}, Landroid/support/rastermill/FrameSequence;->decodeByteArray([B)Landroid/support/rastermill/FrameSequence;

    move-result-object v0

    .line 124
    new-instance v1, Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-direct {v1, v0}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;)V

    .line 125
    iget-object v0, p0, Lbrg;->a:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    invoke-virtual {v1, v0}, Landroid/support/rastermill/FrameSequenceDrawable;->setOnFinishedListener(Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V

    .line 126
    iget-object v0, p0, Lbrg;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-virtual {v1}, Landroid/support/rastermill/FrameSequenceDrawable;->start()V

    .line 129
    iget-object v0, p0, Lbrg;->b:Lbfd;

    const/16 v1, 0x7e3

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 101
    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 102
    invoke-virtual {v0, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 106
    :pswitch_0
    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3

    .line 110
    :pswitch_1
    invoke-virtual {v0, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3

    :cond_4
    move v1, v0

    goto :goto_1

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
