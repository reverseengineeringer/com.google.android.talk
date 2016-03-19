.class final Ldln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldll;


# direct methods
.method constructor <init>(Ldll;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Ldln;->a:Ldll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Ldln;->a:Ldll;

    .line 1042
    iget-object v0, v0, Ldll;->c:Lhpz;

    .line 79
    iget-object v1, p0, Ldln;->a:Ldll;

    invoke-interface {v0, v1}, Lhpz;->a(Lhqg;)V

    .line 82
    iget-object v0, p0, Ldln;->a:Ldll;

    invoke-virtual {v0}, Ldll;->Y_()V

    .line 83
    return-void
.end method
