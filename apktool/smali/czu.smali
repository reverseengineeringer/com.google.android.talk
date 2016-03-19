.class final Lczu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbjq;


# instance fields
.field final synthetic a:Lczt;


# direct methods
.method constructor <init>(Lczt;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lczu;->a:Lczt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lczu;->a:Lczt;

    invoke-virtual {v0}, Lczt;->a()V

    .line 116
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 80
    sget-object v0, Lczx;->a:[I

    iget-object v1, p0, Lczu;->a:Lczt;

    .line 3052
    iget-object v1, v1, Lczt;->aq:Lbkw;

    .line 80
    invoke-virtual {v1}, Lbkw;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lczu;->a:Lczt;

    .line 7052
    iget-object v1, v1, Lczt;->aq:Lbkw;

    .line 107
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown conversation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :pswitch_0
    iget-object v0, p0, Lczu;->a:Lczt;

    .line 4052
    iget-object v0, v0, Lczt;->am:Lbfd;

    .line 84
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    .line 83
    invoke-static {v0, p1, v4}, Laal;->a(ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lczu;->a:Lczt;

    invoke-virtual {v1, v0}, Lczt;->startActivity(Landroid/content/Intent;)V

    .line 110
    :cond_0
    :goto_0
    iget-object v0, p0, Lczu;->a:Lczt;

    invoke-virtual {v0}, Lczt;->a()V

    .line 111
    return-void

    .line 89
    :pswitch_1
    if-eqz p1, :cond_0

    .line 94
    :pswitch_2
    new-instance v0, Ldjm;

    iget-object v1, p0, Lczu;->a:Lczt;

    invoke-virtual {v1}, Lczt;->getActivity()Lba;

    move-result-object v1

    iget-object v2, p0, Lczu;->a:Lczt;

    .line 5052
    iget-object v2, v2, Lczt;->am:Lbfd;

    .line 95
    iget-object v3, p0, Lczu;->a:Lczt;

    .line 6052
    iget-object v3, v3, Lczt;->aq:Lbkw;

    .line 98
    sget-object v5, Lbkw;->c:Lbkw;

    if-ne v3, v5, :cond_1

    move v5, v4

    .line 99
    :goto_1
    const/16 v7, 0x75

    move-object v3, p1

    move v6, v4

    move v9, v8

    move v10, v8

    invoke-direct/range {v0 .. v10}, Ldjm;-><init>(Landroid/app/Activity;Lbfd;Ljava/lang/String;ZIZIIZZ)V

    new-array v1, v8, [Ljava/lang/Void;

    .line 104
    invoke-virtual {v0, v1}, Ldjm;->a([Ljava/lang/Object;)Lhbw;

    goto :goto_0

    .line 99
    :cond_1
    const/4 v5, 0x2

    goto :goto_1

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 68
    const-string v1, "Unexpected model count"

    iget-object v0, p0, Lczu;->a:Lczt;

    .line 1052
    iget-object v0, v0, Lczt;->ao:Laxq;

    .line 68
    invoke-virtual {v0}, Laxq;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    if-eqz p1, :cond_1

    .line 71
    iget-object v0, p0, Lczu;->a:Lczt;

    .line 2052
    iget-object v0, v0, Lczt;->an:Lbjp;

    .line 71
    sget-object v1, Lbfw;->c:Lbfw;

    const/16 v2, 0xa07

    invoke-interface {v0, v1, v2}, Lbjp;->a(Lbfw;I)V

    .line 76
    :goto_1
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lczu;->a:Lczt;

    invoke-virtual {v0}, Lczt;->a()V

    goto :goto_1
.end method
