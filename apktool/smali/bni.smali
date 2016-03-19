.class final Lbni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbjv;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, Lbni;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lbni;->a:Lbng;

    invoke-virtual {v0}, Lbng;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->finish()V

    .line 1152
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 1144
    invoke-static {p1}, Laal;->f(I)Z

    move-result v0

    const-string v1, "Transport Type must be a SMS medium."

    .line 1143
    invoke-static {v0, v1}, Laen;->a(ZLjava/lang/Object;)V

    .line 1146
    iget-object v0, p0, Lbni;->a:Lbng;

    .line 1285
    iget-object v0, v0, Lbng;->bj:Lbpz;

    .line 1146
    invoke-virtual {v0, p1}, Lbpz;->a(I)V

    .line 1147
    return-void
.end method
