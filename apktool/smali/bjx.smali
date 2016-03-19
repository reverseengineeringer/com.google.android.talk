.class final Lbjx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfaa;


# instance fields
.field final synthetic a:Lbjw;


# direct methods
.method constructor <init>(Lbjw;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lbjx;->a:Lbjw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lbjx;->a:Lbjw;

    .line 7040
    iget-object v0, v0, Lbjw;->g:Lezz;

    .line 102
    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lbjx;->a:Lbjw;

    .line 8040
    iget-object v0, v0, Lbjw;->g:Lezz;

    .line 103
    invoke-virtual {v0}, Lezz;->a()V

    .line 105
    :cond_0
    iget-object v0, p0, Lbjx;->a:Lbjw;

    .line 9040
    iget-object v0, v0, Lbjw;->f:Lhaw;

    .line 105
    const/16 v1, 0xaa6

    .line 106
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lhax;->d()V

    .line 108
    iget-object v0, p0, Lbjx;->a:Lbjw;

    .line 10040
    iget-boolean v0, v0, Lbjw;->a:Z

    .line 108
    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lbjx;->a:Lbjw;

    .line 11040
    iget-object v0, v0, Lbjw;->f:Lhaw;

    .line 109
    const/16 v1, 0x9fc

    .line 110
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Lhax;->d()V

    .line 114
    :cond_1
    iget-object v0, p0, Lbjx;->a:Lbjw;

    .line 12040
    iget-boolean v0, v0, Lbjw;->b:Z

    .line 114
    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lbjx;->a:Lbjw;

    .line 13040
    iget-object v0, v0, Lbjw;->f:Lhaw;

    .line 115
    const/16 v1, 0xa02

    .line 116
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Lhax;->d()V

    .line 120
    :cond_2
    iget-object v0, p0, Lbjx;->a:Lbjw;

    .line 14040
    iget-boolean v0, v0, Lbjw;->c:Z

    .line 120
    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lbjx;->a:Lbjw;

    .line 15040
    iget-object v0, v0, Lbjw;->f:Lhaw;

    .line 121
    const/16 v1, 0x9ff

    .line 122
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Lhax;->d()V

    .line 126
    :cond_3
    iget-object v0, p0, Lbjx;->a:Lbjw;

    .line 16040
    iget-object v0, v0, Lbjw;->e:Landroid/content/Context;

    .line 126
    const-class v1, Lbjo;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjo;

    invoke-interface {v0}, Lbjo;->a()V

    .line 127
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lbjx;->a:Lbjw;

    .line 1040
    const/4 v1, 0x0

    iput v1, v0, Lbjw;->h:I

    .line 58
    iget-object v0, p0, Lbjx;->a:Lbjw;

    .line 2040
    const/4 v1, 0x0

    iput-object v1, v0, Lbjw;->i:Ljava/util/List;

    .line 59
    iget-object v0, p0, Lbjx;->a:Lbjw;

    iget-object v0, v0, Lbjw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjn;

    .line 60
    iget-object v1, v0, Lbjn;->a:Lbdx;

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lbjx;->a:Lbjw;

    .line 3040
    iget-object v1, v1, Lbjw;->f:Lhaw;

    .line 61
    const/16 v2, 0x9fb

    .line 62
    invoke-interface {v1, v2}, Lhaw;->a(I)Lhax;

    move-result-object v1

    .line 63
    invoke-interface {v1}, Lhax;->d()V

    .line 73
    :cond_0
    :goto_0
    iget-object v1, p0, Lbjx;->a:Lbjw;

    .line 6040
    iget-object v1, v1, Lbjw;->e:Landroid/content/Context;

    .line 73
    const-class v2, Lbjo;

    invoke-static {v1, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbjo;

    invoke-interface {v1, v0}, Lbjo;->a(Lbjn;)V

    .line 74
    return-void

    .line 64
    :cond_1
    iget-object v1, v0, Lbjn;->c:Lbdw;

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, p0, Lbjx;->a:Lbjw;

    .line 4040
    iget-object v1, v1, Lbjw;->f:Lhaw;

    .line 65
    const/16 v2, 0xa01

    .line 66
    invoke-interface {v1, v2}, Lhaw;->a(I)Lhax;

    move-result-object v1

    .line 67
    invoke-interface {v1}, Lhax;->d()V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, v0, Lbjn;->b:Lbee;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lbjx;->a:Lbjw;

    .line 5040
    iget-object v1, v1, Lbjw;->f:Lhaw;

    .line 69
    const/16 v2, 0x9fe

    .line 70
    invoke-interface {v1, v2}, Lhaw;->a(I)Lhax;

    move-result-object v1

    .line 71
    invoke-interface {v1}, Lhax;->d()V

    goto :goto_0
.end method
