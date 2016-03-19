.class final Ldii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldih;


# direct methods
.method constructor <init>(Ldih;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Ldii;->a:Ldih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Ldii;->a:Ldih;

    .line 1059
    invoke-virtual {v0}, Ldih;->b()V

    .line 175
    return-void
.end method
