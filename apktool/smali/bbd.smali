.class final Lbbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldwa;

.field final synthetic b:I

.field final synthetic c:[Ljxg;

.field final synthetic d:Lbbc;


# direct methods
.method constructor <init>(Lbbc;Ldwa;I[Ljxg;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbbd;->d:Lbbc;

    iput-object p2, p0, Lbbd;->a:Ldwa;

    iput p3, p0, Lbbd;->b:I

    iput-object p4, p0, Lbbd;->c:[Ljxg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lbbd;->a:Ldwa;

    iget v1, p0, Lbbd;->b:I

    iget-object v2, p0, Lbbd;->c:[Ljxg;

    invoke-interface {v0, v1, v2}, Ldwa;->a(I[Ljxg;)V

    .line 42
    return-void
.end method
