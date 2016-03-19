.class final Lepe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lepc;


# direct methods
.method constructor <init>(Lepc;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lepe;->a:Lepc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lepe;->a:Lepc;

    .line 1050
    invoke-virtual {v0}, Lepc;->a()V

    .line 215
    return-void
.end method
