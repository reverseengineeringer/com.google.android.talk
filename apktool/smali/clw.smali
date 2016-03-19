.class final Lclw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lclv;


# direct methods
.method constructor <init>(Lclv;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lclw;->a:Lclv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lclw;->a:Lclv;

    iget-object v0, v0, Lclv;->c:Lclu;

    iget-object v1, p0, Lclw;->a:Lclv;

    iget-object v1, v1, Lclv;->a:Lkhk;

    iget-object v2, p0, Lclw;->a:Lclv;

    iget-boolean v2, v2, Lclv;->b:Z

    .line 1045
    invoke-virtual {v0, v1, v2}, Lclu;->a(Lkhk;Z)V

    .line 195
    return-void
.end method
