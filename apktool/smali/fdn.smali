.class public final Lfdn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field final synthetic d:Lcom/google/android/apps/hangouts/views/MessageListView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/views/MessageListView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    iput-object p1, p0, Lfdn;->d:Lcom/google/android/apps/hangouts/views/MessageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lfdn;->a:I

    .line 23
    iput v1, p0, Lfdn;->b:I

    .line 24
    iput-boolean v1, p0, Lfdn;->c:Z

    .line 25
    return-void
.end method
