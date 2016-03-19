.class final Lfci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxs;


# instance fields
.field final synthetic a:Lfce;

.field private final b:Laxq;


# direct methods
.method constructor <init>(Lfce;Laxq;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lfci;->a:Lfce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p2, p0, Lfci;->b:Laxq;

    .line 275
    invoke-virtual {p2, p0}, Laxq;->a(Laxs;)V

    .line 276
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lfci;->a:Lfce;

    .line 1032
    iget-object v0, v0, Lfce;->b:Lbdy;

    .line 280
    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lfci;->a:Lfce;

    iget-object v1, p0, Lfci;->b:Laxq;

    iget-object v2, p0, Lfci;->a:Lfce;

    .line 2032
    iget-object v2, v2, Lfce;->b:Lbdy;

    .line 281
    invoke-virtual {v1, v2}, Laxq;->c(Lbdy;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lfce;->setChecked(Z)V

    .line 283
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 288
    return-void
.end method
