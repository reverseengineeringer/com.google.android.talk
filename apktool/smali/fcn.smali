.class public final Lfcn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lfcn;->e:Ljava/lang/Class;

    .line 96
    iput-object p2, p0, Lfcn;->d:Ljava/lang/String;

    .line 97
    iput p3, p0, Lfcn;->a:I

    .line 98
    iput p4, p0, Lfcn;->b:I

    .line 99
    iput p5, p0, Lfcn;->c:I

    .line 100
    return-void
.end method
