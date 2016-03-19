.class final Lcmz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcmy;


# direct methods
.method constructor <init>(Lcmy;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcmz;->a:Lcmy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcmz;->a:Lcmy;

    .line 1028
    invoke-virtual {v0}, Lcmy;->c()V

    .line 75
    return-void
.end method
